
/*
  Generated by gemm_operation.py - Do not edit.
*/

///////////////////////////////////////////////////////////////////////////////////////////////////

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"
#include "library_internal.h"
#include "gemm_operation.h"
#include "gemm_operation_3x.hpp"
#include "cutlass/arch/wmma.h"
#include "cutlass/numeric_types.h"

///////////////////////////////////////////////////////////////////////////////////////////////////


  // Gemm operator cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tt_align8
  using Operation_cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tt_align8 = typename cutlass::gemm::kernel::DefaultGemmPlanarComplexUniversal<
    cutlass::bfloat16_t, cutlass::layout::ColumnMajor, cutlass::ComplexTransform::kNone, 8,
    cutlass::bfloat16_t, cutlass::layout::ColumnMajor, cutlass::ComplexTransform::kNone, 8,
    cutlass::bfloat16_t, cutlass::layout::RowMajor,
    float,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 128, 32>,
    cutlass::gemm::GemmShape<32, 32, 32>,
    cutlass::gemm::GemmShape<16, 8, 16>,
    cutlass::epilogue::thread::LinearCombinationPlanarComplex<
      cutlass::bfloat16_t,
      8,
      float,
      float
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd
  >::GemmKernel;

  struct cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tt_align8 :
    public Operation_cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tt_align8 { };


///////////////////////////////////////////////////////////////////////////////////////////////////

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tt_align8(Manifest &manifest) {



  manifest.append(new GemmPlanarComplexOperation<
    cutlass::gemm::device::GemmUniversalAdapter<cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tt_align8>
  >("cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tt_align8"));



}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass

///////////////////////////////////////////////////////////////////////////////////////////////////
