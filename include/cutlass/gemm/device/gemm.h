/***************************************************************************************************
 * Copyright (c) 2017 - 2023 NVIDIA CORPORATION & AFFILIATES. All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 **************************************************************************************************/
/*! \file
    \brief Template for a pipelined GEMM kernel. Does not compute batching or support split-K.
*/

#pragma once

#include "cutlass/cutlass.h"
#include "cutlass/numeric_types.h"
#include "cutlass/arch/arch.h"
#include "cutlass/device_kernel.h"

#include "cutlass/gemm/threadblock/threadblock_swizzle.h"
#include "cutlass/gemm/kernel/gemm.h"

#include "cutlass/gemm/kernel/default_gemm.h"
#include "cutlass/gemm/device/default_gemm_configuration.h"

#include "cutlass/layout/permute.h"
#include <stdio.h>
#include <cuda.h>
#include <cuda_runtime.h>

////////////////////////////////////////////////////////////////////////////////

namespace cutlass {
namespace gemm {
namespace device {

  /// Kernel to copy a matrix into another.
  __global__ void CopyMatrix_kernel(
    float *dstMatrix,
    float *srcMatrix,
    int rows,
    int columns) {

    int i = threadIdx.x + blockIdx.x * blockDim.x;
    int j = threadIdx.y + blockIdx.y * blockDim.y;

    if (i < rows && j < columns) {
      int offset = i + j * rows;

      dstMatrix[offset] = srcMatrix[offset];
    }
  }

  // TODO: THE KERNEL DOESN'T WORK PROPERLY, UPDATE IT TO COVER CASES IN WHICH THE NUMBER OF THREADS IS LOWER THAN THE NUMBER OF ELEMENTS IN THE MATRIX
  /// Kernel to check matrices equivalence.
  __global__ void CompareMatrix_kernel(
    float *dstMatrix,
    float *srcMatrixA,
    float *srcMatrixB,
    int elements) {

    int i = threadIdx.x + blockIdx.x * blockDim.x;
    if(i < elements){
      // TODO: TRY TO REMOVE THE CONDITIONAL STATEMENT
      dstMatrix[i] = (srcMatrixA[i] == srcMatrixB[i])? 1:0;
    }
  }


  /// Kernel to reduce matrix to one element
  // Maximum matrix elements supported: 2^32
  __global__ void ReduceMatrix_kernel(
    float *matrix,
    int   elements
  )
  {
    for (int i=0; i < int(log2(elements)); i++){
    //for (int i=0; i < 2; i++){
      int ja = threadIdx.x * 2 + blockIdx.x * blockDim.x * 2;
      if(ja < elements){
        if(ja + i + pow(2,i) < elements){
          matrix[ja] = matrix[ja] + matrix[ja + int(pow(2,i))];
        }
      }
      // delete all threads that are not needed anymore
      if((ja + int(pow(2,i + 1))) % int(pow(2,i + 2)) == 0){
        return;
      }
      __syncthreads();
    }
  }

/////////////////////////////////////////////////////////////////////////////////////////////////

/*! Gemm device-level operator. This is an interface to efficient CUTLASS GEMM kernels that may
  be invoked from host code.

  The contributions of this class are:
    
    1. At compile time, it maps data types and high-level structural parameters onto 
       specific CUTLASS components.

    2. At runtime, it maps logical arguments to GEMM problems to kernel parameters.

    3. At runtime, it launches kernels on the device.

  The intent is to provide a convenient mechanism for interacting with most plausible GEMM
  configurations for each supported architecture. Consequently, not all parameters are exposed
  to the top-level interface. Rather, sensible defaults at each level of the CUTLASS hierarchy
  are selected to tradeoff simplicity of the interface with flexibility. We expect 
  most configurations to be specified at this level. Applications with more exotic requirements 
  may construct their kernels of interest using CUTLASS components at the threadblock, warp, 
  and thread levels of abstraction.

  CUTLASS exposes computations using the functor design pattern in which objects compose some
  internal state with an overloaded function call operator. This enables decoupling of
  initialization from execution, possibly reducing overhead during steady state phases of
  application execution.

  CUTLASS device-level operators expose an Arguments structure encompassing each logical
  input to the computation. This is distinct from the kernel-level Params structure pattern
  which contains application-specific precomputed state needed by the device code.

  Example of a CUTLASS GEMM operator implementing the functionality of cuBLAS's SGEMM NN
  is as follows:

    //
    // Instantiate the CUTLASS GEMM operator.
    //

    cutlass::gemm::device::Gemm<
      float,
      cutlass::layout::ColumnMajor,
      float,
      cutlass::layout::ColumnMajor,
      float,
      cutlass::layout::ColumnMajor
    > gemm_op;

    //
    // Launch the GEMM operation on the device
    //

    cutlass::Status status = gemm_op({
      {m, n, k},                          // GemmCoord problem_size,
      {A, lda},                           // TensorRef<float, layout::ColumnMajor> ref_A,
      {B, ldb},                           // TensorRef<float, layout::ColumnMajor> ref_B,
      {C, ldc},                           // TensorRef<float, layout::ColumnMajor> ref_C,
      {D, ldd},                           // TensorRef<float, layout::ColumnMajor> ref_D,
      {alpha, beta}                       // EpilogueOutputOp::Params epilogue_op_params
    });


  A simplified view of the template is listed below.

    template <
      /// Element type for A matrix operand
      typename ElementA,
      
      /// Layout type for A matrix operand
      typename LayoutA,
      
      /// Element type for B matrix operand
      typename ElementB,
      
      /// Layout type for B matrix operand
      typename LayoutB,
      
      /// Element type for C and D matrix operands
      typename ElementC,
      
      /// Layout type for C and D matrix operands
      typename LayoutC,
      
      /// Element type for internal accumulation
      typename ElementAccumulator,

      /// Operator class tag
      typename OperatorClass,
      
      /// Tag indicating architecture to tune for.  This is the minimum SM that
      /// supports the intended feature. The device kernel can be built
      /// targeting any SM larger than this number.
      typename ArchTag,
      
      /// Threadblock-level tile size (concept: GemmShape)
      typename ThreadblockShape,
      
      /// Warp-level tile size (concept: GemmShape)
      typename WarpShape,
      
      /// Warp-level tile size (concept: GemmShape)
      typename InstructionShape,
      
      /// Epilogue output operator
      typename EpilogueOutputOp,
      
      /// Threadblock-level swizzling operator
      typename ThreadblockSwizzle,
      
      /// Number of stages used in the pipelined mainloop
      int Stages
    >
    class Gemm;
*/
template <
    /// Element type for A matrix operand
    typename ElementA_,
    /// Layout type for A matrix operand
    typename LayoutA_,
    /// Element type for B matrix operand
    typename ElementB_,
    /// Layout type for B matrix operand
    typename LayoutB_,
    /// Element type for C and D matrix operands
    typename ElementC_,
    /// Layout type for C and D matrix operands
    typename LayoutC_,

    // from here on there are parameters that have a default value
    /// Element type for internal accumulation
    typename ElementAccumulator_ = ElementC_,
    /// Operator class tag
    typename OperatorClass_ = arch::OpClassSimt,
    /// Tag indicating architecture to tune for
    typename ArchTag_ = arch::Sm70,
    /// Threadblock-level tile size (concept: GemmShape)
    typename ThreadblockShape_ = typename DefaultGemmConfiguration<
        OperatorClass_, ArchTag_, ElementA_, ElementB_, ElementC_,
        ElementAccumulator_>::ThreadblockShape,
    /// Warp-level tile size (concept: GemmShape)
    typename WarpShape_ = typename DefaultGemmConfiguration<
        OperatorClass_, ArchTag_, ElementA_, ElementB_, ElementC_,
        ElementAccumulator_>::WarpShape,
    /// Instruction-level tile size (concept: GemmShape)
    typename InstructionShape_ = typename DefaultGemmConfiguration<
        OperatorClass_, ArchTag_, ElementA_, ElementB_, ElementC_,
        ElementAccumulator_>::InstructionShape,
    /// Epilogue output operator
    typename EpilogueOutputOp_ = typename DefaultGemmConfiguration<
        OperatorClass_, ArchTag_, ElementA_, ElementB_, ElementC_,
        ElementAccumulator_>::EpilogueOutputOp,
    /// Threadblock-level swizzling operator
    typename ThreadblockSwizzle_ =
        typename threadblock::GemmIdentityThreadblockSwizzle<>,
    /// Number of stages used in the pipelined mainloop
    int Stages =
        DefaultGemmConfiguration<OperatorClass_, ArchTag_, ElementA_, ElementB_,
                                 ElementC_, ElementAccumulator_>::kStages,
    /// Access granularity of A matrix in units of elements
    int AlignmentA =
        DefaultGemmConfiguration<OperatorClass_, ArchTag_, ElementA_, ElementB_,
                                 ElementC_, ElementAccumulator_>::kAlignmentA,
    /// Access granularity of B matrix in units of elements
    int AlignmentB =
        DefaultGemmConfiguration<OperatorClass_, ArchTag_, ElementA_, ElementB_,
                                 ElementC_, ElementAccumulator_>::kAlignmentB,
    /// If true, kernel supports split-K with serial reduction
    bool SplitKSerial = false,
    /// Operation performed by GEMM
    typename Operator_ = typename DefaultGemmConfiguration<
        OperatorClass_, ArchTag_, ElementA_, ElementB_, ElementC_,
        ElementAccumulator_>::Operator,
    /// Gather operand A by using an index array
    bool GatherA = false,
    /// Gather operand B by using an index array
    bool GatherB = false,
    /// Scatter result D by using an index array
    bool ScatterD = false,
    /// Permute result D
    typename PermuteDLayout = layout::NoPermute>
class Gemm {
 public:

  using ElementA = ElementA_;
  using LayoutA = LayoutA_;
  using TensorRefA = TensorRef<ElementA const, LayoutA>;
  using ElementB = ElementB_;
  using LayoutB = LayoutB_;
  using TensorRefB = TensorRef<ElementB const, LayoutB>;
  using ElementC = ElementC_;
  using LayoutC = LayoutC_;
  using TensorRefC = TensorRef<ElementC const, LayoutC>;
  using TensorRefD = TensorRef<ElementC, LayoutC>;
  using ElementAccumulator = ElementAccumulator_;
  using OperatorClass = OperatorClass_;
  using ArchTag = ArchTag_;
  using ThreadblockShape = ThreadblockShape_;
  using WarpShape = WarpShape_;
  using InstructionShape = InstructionShape_;
  using EpilogueOutputOp = EpilogueOutputOp_;
  using ThreadblockSwizzle = ThreadblockSwizzle_;
  using Operator = Operator_;
  static int const kStages = Stages;
  static int const kAlignmentA = AlignmentA;
  static int const kAlignmentB = AlignmentB;
  static int const kAlignmentC = EpilogueOutputOp::kCount;
  static bool const kSplitKSerial = SplitKSerial;
  static ComplexTransform const kTransformA = ComplexTransform::kNone;
  static ComplexTransform const kTransformB = ComplexTransform::kNone;

  /// Define the kernel
  using GemmKernel = typename kernel::DefaultGemm<
    ElementA,
    LayoutA,
    kAlignmentA,
    ElementB,
    LayoutB,
    kAlignmentB,
    ElementC,
    LayoutC,
    ElementAccumulator,
    OperatorClass,
    ArchTag,
    ThreadblockShape,
    WarpShape,
    InstructionShape,
    EpilogueOutputOp,
    ThreadblockSwizzle,
    kStages,
    kSplitKSerial,
    Operator,
    SharedMemoryClearOption::kNone,
    GatherA,
    GatherB,
    ScatterD,
    PermuteDLayout
  >::GemmKernel;

  /// Argument structure
  struct Arguments {

    //
    // Data members
    //

    GemmCoord problem_size; // defined in include/gemm/gemm_coord.h
    TensorRef<ElementA const, LayoutA> ref_A;
    TensorRef<ElementB const, LayoutB> ref_B;
    TensorRef<ElementC const, LayoutC> ref_C;
    TensorRef<ElementC, LayoutC> ref_D;
    typename EpilogueOutputOp::Params epilogue;
    int split_k_slices;
    // For gather+scatter operations
    int const *gather_A_indices;
    int const *gather_B_indices;
    int const *scatter_D_indices;

    //
    // Methods
    //

    /// Default ctor
    CUTLASS_HOST_DEVICE
    Arguments(): problem_size(0, 0, 0), split_k_slices(1) {

    }

    /// Constructs an Arguments structure 
    CUTLASS_HOST_DEVICE
    Arguments(
      GemmCoord problem_size_,
      TensorRef<ElementA const, LayoutA> ref_A_,
      TensorRef<ElementB const, LayoutB> ref_B_,
      TensorRef<ElementC const, LayoutC> ref_C_,
      TensorRef<ElementC, LayoutC> ref_D_,
      typename EpilogueOutputOp::Params epilogue_ = 
        typename EpilogueOutputOp::Params(),
      int split_k_slices = 1,
      int const *gather_A_indices_ = nullptr,
      int const *gather_B_indices_ = nullptr,
      int const *scatter_D_indices_ = nullptr
    ):
      problem_size(problem_size_),
      ref_A(ref_A_),
      ref_B(ref_B_),
      ref_C(ref_C_),
      ref_D(ref_D_),
      epilogue(epilogue_),
      split_k_slices(split_k_slices),
      gather_A_indices(gather_A_indices_),
      gather_B_indices(gather_B_indices_),
      scatter_D_indices(scatter_D_indices_) {

    }
  };

private:

  /// Kernel parameters object
  typename GemmKernel::Params params_;

public:

  /// Constructs the GEMM.
  Gemm() { }

  /// Allocates device memory for a matrix then fills with arbitrary small integers.
  cudaError_t AllocateMatrix(float **matrix, int rows, int columns) {
    cudaError_t result;

    size_t sizeof_matrix = sizeof(float) * rows * columns;

    std::cout << "matrix before allocation: " << *matrix << "\n";
    std::cout << "matrix size: " << sizeof_matrix << "\n";

    // Allocate device memory.
    result = cudaMalloc(reinterpret_cast<void **>(matrix), sizeof_matrix);

    std::cout << "newly allocated matrix: " << *matrix << "\n";

    /*if (result != cudaSuccess) {
      return result;
    }*/

    // Clear the allocation.
    result = cudaMemset(*matrix, 0, sizeof_matrix);

    if (result != cudaSuccess) {
      std::cerr << "Failed to clear matrix device memory: "
        << cudaGetErrorString(result) << std::endl;
      return result;
    }

    // Initialize matrix elements to arbitrary small integers.
    /*result = InitializeMatrix(*matrix, rows, columns, seed);

    if (result != cudaSuccess) {
      std::cerr << "Failed to initialize matrix: "
        << cudaGetErrorString(result) << std::endl;
      return result;
    }*/

    return result;
  }

  /// Copy the content of a matrix into another
  cudaError_t CopyMatrix(float *dstMatrix,float* srcMatrix, int rows, int columns, cudaStream_t stream = nullptr) {
    cudaError_t result;
    ThreadblockSwizzle threadblock_swizzle;
  
    // Allocate dst matrix
    //result = AllocateMatrix(dstMatrix,rows,columns);

    /*if (result !=  cudaSuccess) {
      return result;
    }
    */
    dim3 grid = threadblock_swizzle.get_grid_shape(params_.grid_tiled_shape);
    dim3 block(GemmKernel::kThreadCount, 1, 1);

    // Copy matrix
    /* TODO:  dynamically allocated shared memory (3rd kernel parameter) shouldn't be necessary
              since we already know the matrixes dimension.
              Statically alloc. smem should be enough if we want to use it.
    */
    CopyMatrix_kernel<<<grid,block,0,stream>>>(dstMatrix, srcMatrix, rows, columns);
    
    // Returns static errors during the kernel allocation since there is no synch that would allow to
    // wait for detection of errors during the kernel computation 
    return cudaGetLastError();
  }

  /// Determines whether the GEMM can execute the given problem.
  static Status can_implement(Arguments const &args) {

    if (!kSplitKSerial && args.split_k_slices > 1) {
      return Status::kErrorInvalidProblem;
    }

    Status status = GemmKernel::can_implement(
      args.problem_size,
      args.ref_A.non_const_ref(),
      args.ref_B.non_const_ref(),
      args.ref_C.non_const_ref(),
      args.ref_D
    );

    if (status != Status::kSuccess) {
      return status;
    }

    return Status::kSuccess;
  }

  /// Gets the workspace size
  static size_t get_workspace_size(Arguments const &args) {
    
    size_t bytes = 0;

    // Determine grid shape
    ThreadblockSwizzle threadblock_swizzle;

    cutlass::gemm::GemmCoord tiled_shape = threadblock_swizzle.get_tiled_shape(
      args.problem_size, 
      {ThreadblockShape::kM, ThreadblockShape::kN, ThreadblockShape::kK},
      args.split_k_slices);
    
    if (kSplitKSerial && args.split_k_slices > 1) {

      bytes += sizeof(int) * size_t(tiled_shape.m()) * size_t(tiled_shape.n());
    }

    return bytes;
  }

  /// Initializes GEMM state from arguments.
  Status initialize(Arguments const &args, int iter, void *workspace = nullptr, cudaStream_t stream = nullptr) {

    // Determine grid shape
    ThreadblockSwizzle threadblock_swizzle;

    // grid_shape corresponds to the number of blocks horizontally and vertically and 1 on the z coordinate
    cutlass::gemm::GemmCoord grid_shape = threadblock_swizzle.get_tiled_shape(
      args.problem_size, 
      {ThreadblockShape::kM, ThreadblockShape::kN, ThreadblockShape::kK},
      args.split_k_slices);

    if (kSplitKSerial) {
      if (args.split_k_slices > 1) {
        if (!workspace) {
          return Status::kErrorWorkspaceNull;
        }

        size_t bytes = get_workspace_size(args);
      
        cudaError_t result = cudaMemsetAsync(workspace, 0, bytes, stream);

        if (result != cudaSuccess) {
          return Status::kErrorInternal;
        }
      }
    }
    else {

      if (args.split_k_slices > 1) {
        return Status::kErrorInvalidProblem;
      }
    }

    std::cout << "ref_C: " << args.ref_C.data() << "\n";

    // Initialize the Params structure
    params_ = typename GemmKernel::Params{
      args.problem_size,
      grid_shape,
      args.ref_A.non_const_ref(),
      args.ref_B.non_const_ref(),
      args.ref_C.non_const_ref(),
      args.ref_D,
      args.epilogue,
      static_cast<int *>(workspace),
      args.gather_A_indices,
      args.gather_B_indices,
      args.scatter_D_indices,
      iter
    };

    return Status::kSuccess;
  }

  /// Lightweight update given a subset of arguments
  Status update(Arguments const &args, void *workspace = nullptr) {
    
    if (kSplitKSerial && args.split_k_slices > 1) {  
      if (!workspace) {
        return Status::kErrorWorkspaceNull;
      }
    }

    params_.ref_A.reset(args.ref_A.non_const_ref().data());
    params_.ref_B.reset(args.ref_B.non_const_ref().data());
    params_.ref_C.reset(args.ref_C.non_const_ref().data());
    params_.ref_D.reset(args.ref_D.data());
    params_.output_op = args.epilogue;
    params_.semaphore = static_cast<int *>(workspace);

    return Status::kSuccess;
  }

  /// Runs the kernel using initialized state.
  Status run(cudaStream_t stream = nullptr) {
    
    /* A first possible implementation of a time redundancy mechanism could be done at this level (the top one),
    it would imply changing the kernel invocation to execute multiple copies of the functionality implemented by the single blocks.
    It could be done by calling some further CudaMemAlloc and CudaMemCpy to allocate copies of the D matrix, then we should 
    redefine the dim3 to resize the grid and the kThreadCount (or maybe we could simply repeat the kernel invocation twice),
    In alternative, it could be possible to modify the way in which the mma PTX instruction is called, either by simply triplicating it
    or by calling it in multiple copies in different blocks. In order to reach the thread level call for the tensor operation you must follow:
      default_gemm --> default_mma --> mma_core --> mma_simt --> mma (thread) --> mma (arch) --> NO, we are not relying on execution of SIMT instructions
      default_gemm --> default_mma --> mma_core(default_mma_core_sm80.h) --> DafaultMmaTensorOp (default_mma_tensor_op_sm80.h) --> MmaTensorOp (mma_tensor_op.h)
                                                                                                                               --> Mma (arch/mma_sm80.h)
    The actual code call is perform in gemm.h/kernel, where the operator that corresponds to the actual kernel is defined.
    The Gemm defined in gemm.h/kernel receives as a parameter the Mma operator defined in the default_gemm.h, which is the actual Mma operator
    customized for tensor cores.
    */

    ThreadblockSwizzle threadblock_swizzle;

    // the params_ is one of the parameters that are passed to the template, it is defined as a type in ell_gemm.h
    // and initialized in the Initialize() function
    dim3 grid = threadblock_swizzle.get_grid_shape(params_.grid_tiled_shape);

    // kThreadCount is defined inside the Gemm operator definition in include/kernel/gemm.h (kernel namespace)
    // this value depends on WarpCount, that is defined inside default_mma_core_sm80.h (cutlass/gemm/threadblock)
    // which depends on kCount, a value that is defined by the size of the problem specified as input parameter for the program 
    // (kCount is in include/cutlass/gemm_coord.h)
    dim3 block(GemmKernel::kThreadCount, 1, 1);

    cudaError_t result;
    
    // this is a characteristic of the specific CUDA architecture
    int smem_size = int(sizeof(typename GemmKernel::SharedStorage));

    /*  Redefine the maximum size of the dynamically allocated memory for Kernel<GemmKernel>
        48KB is the default dynamically allocated shared memory size, everything above this value is
        architecture dependent so it requires the redefinition of the maximum dynamic shared memory
    */  
    if (smem_size >= (48 << 10)) {
      result = cudaFuncSetAttribute(Kernel<GemmKernel>,
                                    cudaFuncAttributeMaxDynamicSharedMemorySize,
                                    smem_size);

      if (result != cudaSuccess) {
        return Status::kErrorInternal;
      }
    }

    // the third parameter represents the amount of shared memory that is allocated per block (it is done automatically when the kernel is launched)
    cutlass::Kernel<GemmKernel><<<grid, block, smem_size, stream>>>(params_);

    result = cudaGetLastError();

    return result == cudaSuccess ? Status::kSuccess : Status::kErrorInternal;
  }

  /// Runs the kernel using initialized state.
  Status operator()(cudaStream_t stream = nullptr) {
    return Status::kErrorInternal;
    return run(stream);
  }

  /// Runs the kernel using initialized state.
  // TODO: CHECK IF WE CAN COPY THE ARGS OBJECT IN TWO OTHER OBJECTS OF THE SAME TYPE, SO THAT WE DON'T NEED
  // TO DO THE DEREFERENCE OF THE SINGLE FIELDS (we are currently unable to retrieve alpha and beta values that are passed from the cu file).
  Status operator()(
    Arguments const &args, 
    void *workspace = nullptr, 
    cudaStream_t stream = nullptr) {

    /*

    std::cout << "alpha: " << args.epilogue.alpha_ptr << ", beta: " << args.epilogue.beta_ptr << "\n";

    */
    float *host_D[TMR], *host_C, *host_tmp[TMR];
    float *device_D[TMR], *device_C[TMR], *tmp[TMR];
    Status status;
    Arguments args_int[TMR];
    int cnt;
    char res = 10;
    cudaError_t result;
    cudaStream_t streams[TMR] = {stream, nullptr, nullptr}; // Streams for additional matrices
    ThreadblockSwizzle threadblock_swizzle;
    dim3 grid,grid_reduce,block,block_reduce;

    // copy args in args_int
    for (int i = 0; i < TMR; i++){
      args_int[i] = args;
    }

    // allocate a copy of D on the host (one copy per each matrix), it is needed to perform the comparison between the intermediate results on the host
    for (int i = 0; i < TMR; i++){
      host_D[i] = (float *)malloc(args.problem_size.m()*args.problem_size.n()*sizeof(float));
      host_tmp[i] = (float *)malloc(args.problem_size.m()*args.problem_size.n()*sizeof(float));
    }
    // host_C = (float *)malloc(args.problem_size.m()*args.problem_size.n()*sizeof(float));

    // allocate three additional D matrices on the device (one per each copy of the original kernel to be executed)
    // allocate three C matrices on the device, since we need to distinguish C and D also when they have the same pointer
    for (int i = 0; i < TMR; i++){

      result = AllocateMatrix(&device_D[i], args.problem_size.m(), args.problem_size.n());
      result = AllocateMatrix(&device_C[i], args.problem_size.m(), args.problem_size.n());
      result = AllocateMatrix(&tmp[i], args.problem_size.m(), args.problem_size.n());

      if(result != cudaSuccess){
        // TODO: you should deallocate matrices...
        return Status::kErrorInternal;
      }
    }
    
    // Create additional streams for matrices operations
    result = cudaStreamCreate(&streams[1]);

    if(result != cudaSuccess){
      // TODO: deallocate matrices
      return Status::kErrorInternal;
    }

    result = cudaStreamCreate(&streams[2]);

    if(result != cudaSuccess){
      // TODO: deallocate matrices
      cudaStreamDestroy(streams[1]);
      return Status::kErrorInternal;
    }

    // the 16 is probably the K dimension of the warp shape
    int total_gemm_k_iterations = (args.problem_size.k() + 16 - 1) / 16; //Mma::Shape::kK = 8 size of the block on A,B matrices

    // define the new args_int structures
    for (int i = 0; i < TMR; i++){
      args_int[i] = Arguments({args.problem_size.m(), args.problem_size.n(), args.problem_size.k()},  // Gemm Problem dimensions
                {args.ref_A.const_ref().data(),args.problem_size.m()},    // Tensor-ref for source matrix A
                {args.ref_B.const_ref().data(),args.problem_size.k()},    // Tensor-ref for source matrix B
                {args.ref_C.const_ref().data(),args.problem_size.m()},    // Tensor-ref for source matrix C
                {device_D[i], args.problem_size.m()},    // Tensor-ref for destination matrix D (may be different memory than source C matrix)
                //{args.ref_D.data(),args.problem_size.m()},
                //{args.ref_D.data(), args.ref_D.layout()},    // Tensor-ref for destination matrix D (may be different memory than source C matrix)
                {1,1}); // TODO: FIND A WAY TO RETRIEVE ALPHA AND BETA, THE ptr BELOW DO NOT WORK
    }

    std::cout << "gemm iterations: " << total_gemm_k_iterations << "\n";
    for (int iter = 0; iter < total_gemm_k_iterations; iter++){
      for (int tmr_inst = 0; tmr_inst < TMR; tmr_inst++){
        
        // perform the initialization of the parameters to be passed to the kernel
        status = initialize(args_int[tmr_inst], iter, workspace, streams[tmr_inst]);

        if (status == Status::kSuccess) {
          status = run(streams[tmr_inst]);
        }
      }
      cudaDeviceSynchronize();
      // copy matrices to host and print them
      for (int i = 0; i < TMR; i++)
        cudaMemcpy(host_D[i], device_D[i], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
      // std:: cout << "D[0] address: " << host_D[0] << "\n";
      // cnt = 0;
      // for (; cnt < args.problem_size.m() * args.problem_size.n(); cnt++){
      //   std::cout << host_D[0][cnt] << ' ';
      //   if(cnt % args.problem_size.m() == args.problem_size.m() - 1)
      //     std::cout << "\n";
      // }
      // std::cout << "\n";
      // std:: cout << "D[1] address: " << host_D[1] << "\n";
      //cnt = 0;
      //for (; cnt < args.problem_size.m() * args.problem_size.n(); cnt++){
      //  std::cout << host_D[1][cnt] << ' ';
      //  if(cnt % args.problem_size.m() == args.problem_size.m() - 1)
      //    std::cout << "\n";
      //}
      //std::cout << "\n";
      // define dim3 parameters
      if (args.problem_size.m()*args.problem_size.n() >= 512){
        grid = dim3((int)ceil(args.problem_size.m()*args.problem_size.n()/512),1,1);
        block = dim3(512, 1, 1); // 512 maximum block size (in terms of number of threads)
      } else {
        grid = dim3(1,1,1);
        block = dim3(args.problem_size.m()*args.problem_size.n(), 1, 1); // 512 maximum block size (in terms of number of threads)
      }
      if (args.problem_size.m()*args.problem_size.n() >= 1024){
        grid_reduce = dim3((int)ceil(args.problem_size.m()*args.problem_size.n()/1024),1,1);
        block_reduce = dim3(512, 1, 1);
      } else {
        grid_reduce = dim3(1,1,1);
        block_reduce = dim3(args.problem_size.m()*args.problem_size.n()/2, 1, 1); // 512 maximum block size (in terms of number of threads)
      }
      printf("Grid : {%d, %d, %d} blocks. Blocks : {%d, %d, %d} threads.\n", grid.x, grid.y, grid.z, block.x, block.y, block.z);
      std::cout << "size:" << args.problem_size.m()*args.problem_size.n() << " \n";
      // compare the results through the optimized kernels
      for (int i = 0; i < TMR; i++)
        CompareMatrix_kernel<<<grid,block,0,streams[i]>>>(tmp[i],device_D[i],device_D[(i+1) % TMR],args.problem_size.m()*args.problem_size.n());
      // wait for the comparison kernels to finish
      cudaDeviceSynchronize();
      // call the reduction kernels
      for (int i = 0; i < TMR; i++)
        ReduceMatrix_kernel<<<grid_reduce,block_reduce,0,streams[i]>>>(tmp[i],args.problem_size.m()*args.problem_size.n());
      // wait for the reduction kernels to finish
      cudaDeviceSynchronize();
      // copy the results to the host 
      for (int i = 0; i < TMR; i++)
        cudaMemcpy(host_D[i], tmp[i], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
      // cnt = 0;
      // for (; cnt < args.problem_size.m() * args.problem_size.n(); cnt++){
      //   std::cout << host_D[0][cnt] << ' ';
      //   if(cnt % args.problem_size.m() == args.problem_size.m() - 1)
      //     std::cout << "\n";
      // }
      // handle odd sized arrays: add the last element manually (it is not reached by the algorithm implemented in the kernel)
      if(args.problem_size.m()*args.problem_size.n() % 2 == 1){
        std:: cout << "you shouldn't be here... \n";
        for (int i = 0; i < TMR; i++)
          *host_D[i] = *host_D[i] + *(host_D[i] + args.problem_size.m()*args.problem_size.n() - 1);
      }
      // actual checks
      // TODO: FIX IT TO COMPARE EACH VALUE WITH THE NUMBER OF ELEMENTS
      if(*host_D[0] == *host_D[1]){
        res = 0; // or 1, it's the same
      }else if(*host_D[1] == *host_D[2]){
        res = 1; // or 2, it's the same
      }else if(*host_D[0] == *host_D[2]){
        res = 0; // or 2, it's the same
      }
      if(res == 10){
        std::cout << "ciaooo\n";
        return Status::kRedundancyError;
      }
      // TODO: MARK AS CORRECT BOTH THE MATRICES WHICH HAVE BEEN FOUND TO BE EQUAL, SO THAT YOU CAN AVOID A COPY OPERATION
      // copy the intermediate result in the other device matrices, since their results may be incorrect
      for (int i = 0; i < TMR; i++)
        if (i != res)
          cudaMemcpy(device_D[i], device_D[res], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToDevice);
      // copy D matrices in the corresponding C ones
      for (int i = 0; i < TMR; i++)
        cudaMemcpy(device_C[i], device_D[i], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToDevice);
      // cudaMemcpy(device_D, host_D, args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyHostToDevice);
      for (int i = 0; i < TMR; i++)
        args_int[i] = Arguments({args.problem_size.m(), args.problem_size.n(), args.problem_size.k()},  // Gemm Problem dimensions
                  {args.ref_A.const_ref().data(),args.problem_size.m()},    // Tensor-ref for source matrix A
                  {args.ref_B.const_ref().data(),args.problem_size.k()},    // Tensor-ref for source matrix B
                  {device_C[i],args.problem_size.m()},    // Tensor-ref for source matrix C
                  {device_D[i], args.problem_size.m()},    // Tensor-ref for destination matrix D (may be different memory than source C matrix)
                  {1,1}); // TODO: FIND A WAY TO RETRIEVE ALPHA AND BETA, THE ptr BELOW DO NOT WORK
    }

    // transfer the correct matrix in the pointer passed as parameter
    cudaMemcpy(args.ref_D.data(), device_D[res], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToDevice);
    cudaMemcpy(host_D[0], device_D[res], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    cnt = 0;
    // for (; cnt < args.problem_size.m() * args.problem_size.n(); cnt++){
    //   std::cout << host_D[0][cnt] << ' ';
    //   if(cnt % args.problem_size.m() == args.problem_size.m() - 1)
    //     std::cout << "\n";
    // }
    return status;

    /*
    float* D[TMR]; // Additional matrices for TMR (DEV)
    float* host_D[TMR]; // as before, but on the host (HOST)
    float* tmp[TMR]; // temporary matrices for storing the results of comparisons between matrix 1-2, 2-3 and 1-3 (DEV)
    float* host_tmp[TMR]; // as before, but they are kept on the host (to perform the comparisons between the sums and to handle odd sized matrices) (HOST)
    cudaStream_t streams[TMR] = {stream, nullptr, nullptr}; // Streams for additional matrices
    cudaError_t result;
    Status status[TMR]; // GEMMs return value
    Arguments args_arr[TMR]; // Arguments
    char res = 10; // the index of the matrix where the correct result is stored (the result should be copied)

    // mallocate the host matrices
    for (int i = 0; i< TMR; i++)
      host_tmp[i] = (float *)malloc(args.problem_size.m()*args.problem_size.n()*sizeof(float));

    for (int i = 0; i< TMR; i++)
      host_D[i] = (float *)malloc(args.problem_size.m()*args.problem_size.n()*sizeof(float));

    //AllocateMatrix(float **matrix, int rows, int columns)
    std::cout << "D[0] address: " << &D[0] << "\n";
    std::cout << "D[0] data: " << D[0] << "\n";
    // Allocate additional matrices 
    result = AllocateMatrix(&D[0], args.problem_size.m(), args.problem_size.n());

    std::cout << "D[0] data: " << D[0] << "\n";
    
    if(result != cudaSuccess){
      return Status::kErrorInternal;
    }

    std::cout << "D[1] address: " << &D[1] << "\n";
    result = AllocateMatrix(&D[1], args.problem_size.m(), args.problem_size.n());
    
    if(result != cudaSuccess){
      cudaFree(D[0]);
      return Status::kErrorInternal;
    }
    
    std::cout << "D[2] address: " << &D[2] << "\n";
    result = AllocateMatrix(&D[2], args.problem_size.m(), args.problem_size.n());
    
    if(result != cudaSuccess){
      cudaFree(D[0]);
      cudaFree(D[1]);
      return Status::kErrorInternal;
    }
    
    result = AllocateMatrix(&tmp[0], args.problem_size.m(), args.problem_size.n());
    
    if(result != cudaSuccess){
      cudaFree(D[0]);
      cudaFree(D[1]);
      cudaFree(D[2]);
      return Status::kErrorInternal;
    }

    result = AllocateMatrix(&tmp[1], args.problem_size.m(), args.problem_size.n());
    
    if(result != cudaSuccess){
      cudaFree(D[0]);
      cudaFree(D[1]);
      cudaFree(D[2]);
      cudaFree(tmp[0]);
      return Status::kErrorInternal;
    }

    result = AllocateMatrix(&tmp[2], args.problem_size.m(), args.problem_size.n());
    
    if(result != cudaSuccess){
      cudaFree(D[0]);
      cudaFree(D[1]);
      cudaFree(D[2]);
      cudaFree(tmp[0]);
      cudaFree(tmp[1]);
      return Status::kErrorInternal;
    }

    // Create additional streams for matrices operations
    result = cudaStreamCreate(&streams[1]);

    if(result != cudaSuccess){
      cudaFree(D[0]);
      cudaFree(D[1]);
      cudaFree(D[2]);
      return Status::kErrorInternal;
    }

    result = cudaStreamCreate(&streams[2]);

    if(result != cudaSuccess){
      cudaFree(D[0]);
      cudaFree(D[1]);
      cudaFree(D[2]);
      cudaStreamDestroy(streams[1]);
      return Status::kErrorInternal;
    }
    

    workspace = nullptr; // Forced to nullptr since we don't know what it does

    std::cout << "ref_D: " << (D[0]) << "\n";
    std::cout << "ref_D: " << (D[1]) << "\n";
    std::cout << "ref_D: " << (D[2]) << "\n";
    std::cout << "problem_size: " << args.problem_size.m() << "\n";
    //std::cout << "layout: " << args.ref_D.stride() << "\n";

    //  The operations inside the loop need to be done in that specific order for each destination matrix
    //  since, otherwise, the params_ structure would be overwritten by the 'initialize' method.
    //  This means that, for example, it is not possible to initialize the args for each matrix before
    //  calling the 'run' method.
    CUTLASS_PRAGMA_UNROLL
    for(int i=0;i<TMR;i++){
      
      // args_arr[i] = Arguments(args.problem_size,  // Gemm Problem dimensions
      //         args.ref_A,    // Tensor-ref for source matrix A
      //         args.ref_B,    // Tensor-ref for source matrix B
      //         args.ref_C,    // Tensor-ref for source matrix C
      //         //{D[i], args.ref_D.layout()},    // Tensor-ref for destination matrix D (may be different memory than source C matrix)
      //         args.ref_D,
      //         //{args.ref_D.data(), args.ref_D.layout()},    // Tensor-ref for destination matrix D (may be different memory than source C matrix)
      //         //{0,0},
      //         {args.epilogue.alpha_ptr, args.epilogue.beta_ptr}); // Scalars used in the Epilogue
      //         //{0.0, 0.0});
      args_arr[i] = Arguments({args.problem_size.m(), args.problem_size.n(), args.problem_size.k()},  // Gemm Problem dimensions
              {args.ref_A.const_ref().data(),args.problem_size.m()},    // Tensor-ref for source matrix A
              {args.ref_B.const_ref().data(),args.problem_size.k()},    // Tensor-ref for source matrix B
              {args.ref_C.data(),args.problem_size.m()},    // Tensor-ref for source matrix C
              {D[i], args.problem_size.m()},    // Tensor-ref for destination matrix D (may be different memory than source C matrix)
              //{args.ref_D.data(),args.problem_size.m()},
              //{args.ref_D.data(), args.ref_D.layout()},    // Tensor-ref for destination matrix D (may be different memory than source C matrix)
              {1,0}); // TODO: FIND A WAY TO RETRIEVE ALPHA AND BETA, THE ptr BELOW DO NOT WORK
              //{args.epilogue.alpha_ptr, args.epilogue.beta_ptr}); // Scalars used in the Epilogue
              //{0.0, 0.0});
      status[i] = initialize(args_arr[i], workspace, streams[i]);
      //status[i] = initialize(args, workspace, stream);
      std::cout << "before run \n";
      std::cout << "params.ref_D: " << params_.ref_D.data() << "\n";
      if (status[i] == Status::kSuccess) {
        std:: cout << "running instance " << i << "\n";
        //status[i] = run(streams[i]);
        status[i] = run(stream);
      }
      if (status[i] != Status::kSuccess) {
        return Status::kErrorInternal;
      }
    }

    //cudaDeviceSynchronize();
    //cudaMemcpy(args.ref_D.data(), D[0], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    //return status[0];
    std:: cout << "reached sync point \n";
    cudaDeviceSynchronize();
    std:: cout << "passed sync point \n";

    // check results
    cudaMemcpy(host_D[0], D[0], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(host_D[1], D[1], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(host_D[2], D[2], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);

    std:: cout << "D[0] address: " << host_D[0] << "\n";
    for(int i = 0; i< args.problem_size.m()*args.problem_size.n(); i++)
      std:: cout << host_D[0][i] << " ";
    std:: cout << "\n";

    std:: cout << "D[1] address: " << host_D[1] << "\n";
    for(int i = 0; i< args.problem_size.m()*args.problem_size.n(); i++)
      std:: cout << host_D[1][i] << " ";
    std:: cout << "\n";

    std:: cout << "D[2] address: " << host_D[2] << "\n";
    for(int i = 0; i< args.problem_size.m()*args.problem_size.n(); i++)
      std:: cout << host_D[2][i] << " ";
    std:: cout << "\n";

    // Operation results check
    ThreadblockSwizzle threadblock_swizzle;
    
    // redefine grid and block size
    dim3 grid = threadblock_swizzle.get_grid_shape(params_.grid_tiled_shape);
    dim3 block(GemmKernel::kThreadCount, 1, 1);
    dim3 block_reduce(args.problem_size.m()*args.problem_size.n()/2, 1, 1);

    std::cout << "block size: " << GemmKernel::kThreadCount << "\n";
    std::cout << "grid size: " << grid << "\n";

    std:: cout << "after dim3 definitions \n";
    
    // call comparison kernels on different streams to make sure they are executed in parallel
    CompareMatrix_kernel<<<grid,block,0,streams[0]>>>(tmp[0],D[0],D[1],args.problem_size.m()*args.problem_size.n());
    CompareMatrix_kernel<<<grid,block,0,streams[1]>>>(tmp[1],D[1],D[2],args.problem_size.m()*args.problem_size.n());
    CompareMatrix_kernel<<<grid,block,0,streams[2]>>>(tmp[2],D[0],D[2],args.problem_size.m()*args.problem_size.n());

    cudaDeviceSynchronize();

    cudaMemcpy(host_tmp[0], tmp[0], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(host_tmp[1], tmp[1], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(host_tmp[2], tmp[2], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);

    cudaDeviceSynchronize();

    std:: cout << "tmp address: " << host_tmp[0] << "\n";
    for(int i = 0; i< args.problem_size.m()*args.problem_size.n(); i++)
      std:: cout << host_tmp[0][i] << " ";
    std:: cout << "\n";

    ReduceMatrix_kernel<<<grid,block_reduce,0,streams[0]>>>(tmp[0],args.problem_size.m()*args.problem_size.n());
    ReduceMatrix_kernel<<<grid,block_reduce,0,streams[1]>>>(tmp[1],args.problem_size.m()*args.problem_size.n());
    ReduceMatrix_kernel<<<grid,block_reduce,0,streams[2]>>>(tmp[2],args.problem_size.m()*args.problem_size.n());

    std:: cout << "after compare and reduction\n";

    cudaDeviceSynchronize();
    
    std:: cout << "after second sync \n";

    // copy tmp matrices in host_tmp matrices
    cudaMemcpy(host_tmp[0], tmp[0], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(host_tmp[1], tmp[1], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    cudaMemcpy(host_tmp[2], tmp[2], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);

    cudaDeviceSynchronize();

    std:: cout << "tmp address: " << host_tmp[0] << "\n";
    for(int i = 0; i< args.problem_size.m()*args.problem_size.n(); i++)
      std:: cout << host_tmp[0][i] << " ";
    std:: cout << "\n";

    // handle odd sized arrays: you have to add up the last element of the matrix/array to the first one (the one where the result is stored)
    if(args.problem_size.m()*args.problem_size.n() % 2 == 1){
      std:: cout << "you shouldn't be here... \n";
      *host_tmp[0] = *host_tmp[0] + *(host_tmp[0] + args.problem_size.m()*args.problem_size.n() - 1);
      *host_tmp[1] = *host_tmp[1] + *(host_tmp[1] + args.problem_size.m()*args.problem_size.n() - 1);
      *host_tmp[2] = *host_tmp[2] + *(host_tmp[2] + args.problem_size.m()*args.problem_size.n() - 1);
    }

    std:: cout << "after odd size handling \n";

    // actual checks
    if(*host_tmp[0] == *host_tmp[1]){
      res = 0; // or 1, it's the same
    }else if(*host_tmp[1] == *host_tmp[2]){
      res = 1; // or 1, it's the same
    }else if(*host_tmp[0] == *host_tmp[2]){
      res = 0; // or 1, it's the same
    }
    if(res == 10){
      return Status::kRedundancyError;
    }

    std::cout << "res: " << res << "\n";

    // copy the result matrix in the real destination
    if(res == 0){
      cudaMemcpy(args.ref_D.data(), D[0], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    }else if(res == 1){
      cudaMemcpy(args.ref_D.data(), D[1], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    }else if(res == 2){
      cudaMemcpy(args.ref_D.data(), D[2], args.problem_size.m() * args.problem_size.n() * sizeof(float), cudaMemcpyDeviceToHost);
    }

    // Free resources
    cudaFree(D[0]);
    cudaFree(D[1]);
    cudaFree(D[2]);
    cudaFree(tmp[0]);
    cudaFree(tmp[1]);
    cudaFree(tmp[2]);
    cudaStreamDestroy(streams[1]);
    cudaStreamDestroy(streams[2]);

    // mallocate the host_tmp matrices
    for (int i = 0; i< TMR; i++)
      free(host_tmp[i]);

    return Status::kSuccess;
    */
  }
};

////////////////////////////////////////////////////////////////////////////////

/// Partial specialization for column-major output exchanges problem size and operand.
template <
    /// Element type for A matrix operand
    typename ElementA_,
    /// Layout type for A matrix operand
    typename LayoutA_,
    /// Element type for B matrix operand
    typename ElementB_,
    /// Layout type for B matrix operand
    typename LayoutB_,
    /// Element type for C and D matrix operands
    typename ElementC_,
    /// Element type for internal accumulation
    typename ElementAccumulator_,
    /// Operator class tag
    typename OperatorClass_,
    /// Tag indicating architecture to tune for
    typename ArchTag_,
    /// Threadblock-level tile size (concept: GemmShape)
    typename ThreadblockShape_,
    /// Warp-level tile size (concept: GemmShape)
    typename WarpShape_,
    /// Instruction-level tile size (concept: GemmShape)
    typename InstructionShape_,
    /// Epilogue output operator
    typename EpilogueOutputOp_,
    /// Threadblock-level swizzling operator
    typename ThreadblockSwizzle_,
    /// Number of stages used in the pipelined mainloop
    int Stages,
    /// Access granularity of A matrix in units of elements
    int AlignmentA,
    /// Access granularity of B matrix in units of elements
    int AlignmentB,
    /// If true, kernel supports split-K as a serial reduction
    bool SplitKSerial,
    /// Operation performed by GEMM
    typename Operator_,
    /// Gather operand A by using an index array
    bool GatherA,
    /// Gather operand B by using an index array
    bool GatherB,
    /// Scatter result D by using an index array
    bool ScatterD,
    /// Permute result D
    typename PermuteDLayout
>
class Gemm<ElementA_, LayoutA_, ElementB_, LayoutB_, ElementC_,
           layout::ColumnMajor,  // partially specialized on LayoutC
           ElementAccumulator_, OperatorClass_, ArchTag_, ThreadblockShape_,
           WarpShape_, InstructionShape_, EpilogueOutputOp_,
           ThreadblockSwizzle_, Stages, AlignmentA, AlignmentB, SplitKSerial,
           Operator_, GatherA, GatherB, ScatterD, PermuteDLayout> {
 public:

  using ElementA = ElementA_;
  using LayoutA = LayoutA_;
  using TensorRefA = TensorRef<ElementA const, LayoutA>;
  using ElementB = ElementB_;
  using LayoutB = LayoutB_;
  using TensorRefB = TensorRef<ElementB const, LayoutB>;
  using ElementC = ElementC_;
  using LayoutC = layout::ColumnMajor;
  using TensorRefC = TensorRef<ElementC const, LayoutC>;
  using TensorRefD = TensorRef<ElementC, LayoutC>;
  using ElementAccumulator = ElementAccumulator_;
  using OperatorClass = OperatorClass_;
  using ArchTag = ArchTag_;
  using ThreadblockShape = ThreadblockShape_;
  using WarpShape = WarpShape_;
  using InstructionShape = InstructionShape_;
  using EpilogueOutputOp = EpilogueOutputOp_;
  using ThreadblockSwizzle = ThreadblockSwizzle_;
  using Operator = Operator_;
  static int const kStages = Stages;
  static int const kAlignmentA = AlignmentA;
  static int const kAlignmentB = AlignmentB;
  static ComplexTransform const kTransformA = ComplexTransform::kNone;
  static ComplexTransform const kTransformB = ComplexTransform::kNone;
  static bool const kSplitKSerial = SplitKSerial;

  using UnderlyingOperator = Gemm< 
    ElementB,
    typename layout::LayoutTranspose<LayoutB>::type,
    ElementA,
    typename layout::LayoutTranspose<LayoutA>::type,
    ElementC,
    layout::RowMajor,    
    ElementAccumulator,
    OperatorClass,
    ArchTag,
    ThreadblockShape,
    WarpShape,
    InstructionShape,
    EpilogueOutputOp,
    ThreadblockSwizzle,
    Stages,
    kAlignmentB,
    kAlignmentA,
    SplitKSerial,
    Operator,
    GatherB,
    GatherA,
    ScatterD,
    PermuteDLayout
  >;

  using UnderlyingArguments = typename UnderlyingOperator::Arguments;
  using GemmKernel = typename UnderlyingOperator::GemmKernel;
  static int const kAlignmentC = UnderlyingOperator::kAlignmentC;

  /// Argument structure
  struct Arguments {

    //
    // Data members
    //

    GemmCoord problem_size;
    TensorRef<ElementA const, LayoutA> ref_A;
    TensorRef<ElementB const, LayoutB> ref_B;
    TensorRef<ElementC const, LayoutC> ref_C;
    TensorRef<ElementC, LayoutC> ref_D;
    typename EpilogueOutputOp::Params epilogue;
    int split_k_slices;
    // For gather+scatter operations
    int *gather_A_indices;
    int *gather_B_indices;
    int *scatter_D_indices;

    //
    // Methods
    //

    /// Default ctor
    CUTLASS_HOST_DEVICE
    Arguments() { }

    /// Constructs an Arguments structure 
    CUTLASS_HOST_DEVICE
    Arguments(
      GemmCoord problem_size_,
      TensorRef<ElementA const, LayoutA> ref_A_,
      TensorRef<ElementB const, LayoutB> ref_B_,
      TensorRef<ElementC const, LayoutC> ref_C_,
      TensorRef<ElementC, LayoutC> ref_D_,
      typename EpilogueOutputOp::Params epilogue_ = 
        typename EpilogueOutputOp::Params(),
      int split_k_slices = 1,
      int *gather_A_indices_ = nullptr,
      int *gather_B_indices_ = nullptr,
      int *scatter_D_indices_ = nullptr
    ):
      problem_size(problem_size_),
      ref_A(ref_A_),
      ref_B(ref_B_),
      ref_C(ref_C_),
      ref_D(ref_D_),
      epilogue(epilogue_),
      split_k_slices(split_k_slices),
      gather_A_indices(gather_A_indices_),
      gather_B_indices(gather_B_indices_),
      scatter_D_indices(scatter_D_indices_) { }
  };

private:

  UnderlyingOperator underlying_operator_;

public:

  /// Constructs the GEMM.
  Gemm() { }

  /// Helper to construct a transposed equivalent for the underying GEMM operator
  static UnderlyingArguments to_underlying_arguments(Arguments const &args) {
    return UnderlyingArguments(
      {args.problem_size.n(), args.problem_size.m(), args.problem_size.k()},
      {args.ref_B.data(), args.ref_B.stride(0)},
      {args.ref_A.data(), args.ref_A.stride(0)},
      {args.ref_C.data(), args.ref_C.stride(0)},
      {args.ref_D.data(), args.ref_D.stride(0)},
      args.epilogue,
      args.split_k_slices,
      args.gather_B_indices,
      args.gather_A_indices,
      args.scatter_D_indices
    );
  }

  /// Determines whether the GEMM can execute the given problem.
  static Status can_implement(Arguments const &args) {

    return UnderlyingOperator::can_implement(to_underlying_arguments(args));
  }

  /// Gets the workspace size
  static size_t get_workspace_size(Arguments const &args) {
    
    return UnderlyingOperator::get_workspace_size(to_underlying_arguments(args));
  }

  /// Initializes GEMM state from arguments.
  Status initialize(Arguments const &args, void *workspace = nullptr, cudaStream_t stream = nullptr) {

    return underlying_operator_.initialize(to_underlying_arguments(args), workspace);
  }

  /// Lightweight update given a subset of arguments
  Status update(Arguments const &args, void *workspace = nullptr) {

    return underlying_operator_.update(to_underlying_arguments(args), workspace);
  }

  /// Runs the kernel using initialized state.
  Status run(cudaStream_t stream = nullptr) {

    return underlying_operator_.run(stream);
  }

  /// Runs the kernel using initialized state.
  Status operator()(cudaStream_t stream = nullptr) {
    return run(stream);
  }

  /// Runs the kernel using initialized state.
  // This is a redefinition of the parenthesis operator, which is called in cutlass::Status status = gemm_operator(args); from the basic_gemm.cu
  Status operator()(
    Arguments const &args, 
    void *workspace = nullptr, 
    cudaStream_t stream = nullptr) {
    
    Status status = initialize(args, workspace, stream);
    
    if (status == Status::kSuccess) {
      status = run(stream);
    }

    return status;
  }
};

////////////////////////////////////////////////////////////////////////////////

} // namespace device
} // namespace gemm
} // namespace cutlass

////////////////////////////////////////////////////////////////////////////////
