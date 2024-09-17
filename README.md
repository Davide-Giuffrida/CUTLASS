![ALT](/media/images/gemm-hierarchy-with-epilogue-no-labels.png "Complete CUDA GEMM decomposition")

# Triple Modular Redundancy in CUTLASS 3.3
This repository shows four different implementations of a TMR mechanism to improve the reliability of matrix multiplications. The library that has been used as a reference is [CUTLASS](https://github.com/NVIDIA/cutlass), an open-source repository which fully exploits GPU capabilities by decomposing the problem in multiple parts, each one to be executed at a certain abstraction level in the CUDA hierarchy. The solutions we proposed introduce redundancy at different levels, playing on the tradeoff between overhead and correction capability.

# Repository structure

Since different solutions require introducing modifications in different parts of the whole library, we decided to allocate them in different branches. The tree we decided to implement for this repository is shown here:

- branch [TMR_at_the_kernel_call_level](https://github.com/Davide-Giuffrida/CUTLASS/tree/TMR_at_the_kernel_call_level) shows a first simple implementation at the highest possible abstraction level, consisting of 3 kernel calls and comparisons to be performed on the 3 results.

- in branch [TMR_in_the_same_SM](https://github.com/Davide-Giuffrida/CUTLASS/tree/TMR_in_the_same_SM) we moved the repetitions and the comparisons inside the kernel, replicating each one of the intermediate warp-level computations 3 times in a row and checking the results afterward. In this case we increase the correction capability, since we perform multiple checks during the overall algorithm, but in turn we negatively affect the overhead.

- branch [TMR_with_additional_blocks](https://github.com/Davide-Giuffrida/CUTLASS/tree/TMR_with_additional_blocks) is dedicated to a third implementation which divides the execution in checkpoints and assigns the resulting parts to separate kernels, to be executed in series one after the others. During each one of the resulting steps 3 TMR kernels are invoked to be executed on different streams, in order to increase the probability of scheduling TMR instances on different SMs. This approach combines advantages and disadvantages of the previous solutions, being as resistant to permanent faults as the first solution but also adding overhead due to mutliple comparisons in correspondence of checkpoints.

- in branch [cooperative_groups](https://github.com/Davide-Giuffrida/CUTLASS/tree/cooperative_groups) a permanent-fault tolerant solution is proposed, which also tries to maximize GPU usage in accordance to some constraints. The bulk of this implementation consists in dividing the matrix in tiles assigned to different kernel calls, so that each threadblock scheduled as part of a kernel is always present on the GPU during the kernel execution. This condition holds only if the number of threadblocks is lower than or equal to the number of SMs, and it is necessary to implement a threadblock-level synchronization primitive. Each kernel computes the tile assigned to it in exactly 3 copies, the TMR instances, assigned to different threadblocks. Comparisons between different threadblocks intermediate results are done in correspondence of checkpoints by enforcing cooperative groups based synchronization.

Which solution to choose depends on the requirements for each specific applications, keeping into account the frequency at which faults can occur, the resistance to permanent and transient faults but also the overhead introduced by comparisons in correspondence of multiple checkpoints.

# Template used for testing the solutions
In order to assess the correctness of each implementation we performed testing over a basic GEMM computation program, [the one provided as part of the CUDA examples suite](examples/00_basic_gemm/basic_gemm.cu). Since we had to test the tensor core usage, the example has been modified slightly to include tensor cores related classes in the Gemm class declaration.

# Limitations
Up to now, the TMR implementation over the library works only with row-major matrices. A simple way to generalize our code could be the one to produce a generic interface for any format, which is in charge of translating any kind of combination of input matrices formats to the purely row-major one.
Another limitation is related to the depth of the checkpointing mechanism, since until now the number of checkpoints is imply given by the number of iterations in the computation of a threadblock. Going deeper would require to change the warp level implementation, which should simply require moving the TMR code deeper in the hierarchy and fixing the datatypes appropriately (since tiles related to different levels are named differently).  

The following sections are part of the original CUTLASS documentation.
# Performance

<p align="center"><img src=media/images/cutlass-3.1-gemm-peak-performance.png></p>

CUTLASS primitives are very efficient.  When used to construct device-wide GEMM kernels,
they exhibit peak performance comparable to cuBLAS for scalar GEMM
computations. The above figure shows CUTLASS performance relative to cuBLAS
for large matrix dimensions on an [NVIDIA H100](https://www.nvidia.com/en-us/data-center/h100/) (NVIDIA Hopper architecture), 
an [NVIDIA L40](https://www.nvidia.com/en-us/data-center/l40/) (NVIDIA Ada architecture),
an [NVIDIA A100](https://www.nvidia.com/en-us/data-center/a100/) (NVIDIA Ampere architecture),  
and an [NVIDIA A40](https://www.nvidia.com/en-us/data-center/a40/)  (NVIDIA Ampere architecture).
CUTLASS 3.0 was compiled with the [CUDA 12.0 Toolkit](https://developer.nvidia.com/cuda-downloads). 
Tensor Core operations are implemented using CUDA's 
[mma](https://docs.nvidia.com/cuda/parallel-thread-execution/index.html#warp-level-matrix-instructions-mma) and
[wgmma](https://docs.nvidia.com/cuda/parallel-thread-execution/index.html#asynchronous-warpgroup-level-matrix-instructions) instructions.

<p align="center"><img src=media/images/cutlass-2.9-implicit-gemm-performance.png></p>

When using CUTLASS building blocks to construct device-wide implicit gemm (Fprop, Dgrad, and Wgrad)
kernels, CUTLASS performance is also comparable to cuDNN when running Resnet-50 layers on an [NVIDIA A100](https://www.nvidia.com/en-us/data-center/a100/)
as shown in the above figure.  Tensor Core operations are implemented using CUDA's
[mma instruction](https://docs.nvidia.com/cuda/parallel-thread-execution/index.html#warp-level-matrix-instructions-mma).

# Compatibility

CUTLASS requires a C++17 host compiler and 
performs best when built with the [**CUDA 12.2.2 Toolkit**](https://developer.nvidia.com/cuda-toolkit-archive).
It is also compatible with CUDA 11.4, CUDA 11.5, CUDA 11.6, CUDA 11.7, CUDA 11.8, CUDA 12.0 and CUDA 12.1.

## Operating Systems
We have tested the following environments.

|**Operating System** | **Compiler** |
|-----------------|----------|
| Ubuntu 18.04 | GCC 7.5.0  |
| Ubuntu 20.04 | GCC 10.3.0 |
| Ubuntu 22.04 | GCC 11.2.0 |
| Ubuntu 22.04 | Clang 10.0.0 |
| Ubuntu 22.04 | Clang 14.0.6 |
| Windows 10.0 | Visual Studio 2019 v16.11.27 |

Note: GCC 8.5.0 has known regressions regarding fold expressions and overloaded operators. Using GCC 7.5.0 or (preferred) GCC >= 9 is recommended.

## Hardware
CUTLASS runs successfully on the following NVIDIA GPUs, and it is expected to be efficient on Volta, Turing, Ampere, Ada, and Hopper architecture based NVIDIA GPUs.

|**GPU**|**CUDA Compute Capability**|**Minimum CUDA Toolkit Required by CUTLASS-3**|
|---|---|---|
|NVIDIA V100 Tensor Core GPU            |7.0|11.4|
|NVIDIA TitanV                          |7.0|11.4|
|NVIDIA GeForce RTX 2080 TI, 2080, 2070 |7.5|11.4|
|NVIDIA T4                              |7.5|11.4|
|NVIDIA A100 Tensor Core GPU            |8.0|11.4|
|NVIDIA A10                             |8.6|11.4|
|NVIDIA GeForce RTX 3090                |8.6|11.4|
|NVIDIA GeForce RTX 4090                |8.9|11.8|
|NVIDIA L40                             |8.9|11.8|
|NVIDIA H100 Tensor Core GPU            |9.0|11.8|

## Target Architecture

In general, PTX code generated for one target architecture can be run on future architectures (i.e., it is forward compatible).  However, CUDA 12.0 introduced the concept of "architecture-accelerated features" whose PTX does not have forward compatibility guarantees. Several Hopper PTX instructions fall under this category of architecture-accelerated features, and thus require a `sm_90a` target architecture (note the "a" appended). For more details on this and other architecture-accelerated instructions, please refer to the [CUDA Documentation](https://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html#feature-availability).

The target architecture information is passed on to CUTLASS via the cmake flag `CUTLASS_NVCC_ARCHS`. In order to maximize performance on Hopper GH100, users are required to build CUTLASS with `90a` as the target architecture. If a user accidentally builds a kernel which uses SM90a features (e.g. Hopper Tensor Core Instructions), using the SM90 target (note the lack of "a"), with either CTK 12 or 11.8, the kernel is expected to fail with a runtime error.

```
cmake .. -DCUTLASS_NVCC_ARCHS="90a" 
```

Please refer to the [functionality documentation](media/docs/functionality.md) for details on which kernels require which target architectures.

# Documentation

The TMR solutions proposed in this library are documented in details in a [report][] we wrote as part of the assignment for the "GPU programming" course held in Politecnico di Torino.

# Building CUTLASS

CUTLASS is a header-only template library and does not need to be built to be used by other
projects. Client applications should target CUTLASS's `include/` directory in their include
paths.

CUTLASS unit tests, examples, and utilities can be build with CMake.
The minimum version of CMake is given in the [Quickstart guide](media/docs/quickstart.md).
Make sure the `CUDACXX` environment  variable points to NVCC in the CUDA Toolkit installed
on your system.

```bash
$ export CUDACXX=${CUDA_INSTALL_PATH}/bin/nvcc
```

Create a build directory within the CUTLASS project, then run CMake. By default CUTLASS will build kernels
for CUDA architecture versions 5.0, 6.0, 6.1, 7.0, 7.5, 8.0, 8.6, 8.9, and 9.0.
To reduce compile time you can specify
the architectures to build CUTLASS for by changing the CMake configuration setting
`CUTLASS_NVCC_ARCHS`.

```bash
$ mkdir build && cd build

$ cmake .. -DCUTLASS_NVCC_ARCHS=80               # compiles for NVIDIA's Ampere Architecture
```

From the `build/` directory, compile and run the CUTLASS unit tests by building the target `test_unit` with make.

The unit tests are organized as several binaries mirroring the top-level namespaces of CUTLASS,
and they may be executed in parallel via make's `-j` command line argument.

```bash
$ make test_unit -j
...
...
...
[----------] Global test environment tear-down
[==========] 946 tests from 57 test cases ran. (10812 ms total)
[  PASSED  ] 946 tests.
```

All tests should pass on supported platforms, though the exact number of tests may vary over time.


# Project Structure

CUTLASS is arranged as a header-only library along with Utilities, Tools, Examples, and unit tests. 
[Doxygen documentation](https://nvidia.github.io/cutlass) provides a complete list of files, classes, 
and template concepts defined in the CUTLASS project.

A detailed explanation of the source code organization may be found in the 
[CUTLASS documentation](media/docs/code_organization.md), but several main components are summarized below.

## CUTLASS Template Library

```
include/                     # client applications should target this directory in their build's include paths

  cutlass/                   # CUDA Templates for Linear Algebra Subroutines and Solvers - headers only

    arch/                    # direct exposure of architecture features (including instruction-level GEMMs)

    conv/                    # code specialized for convolution

    epilogue/                # code specialized for the epilogue of gemm/convolution

    gemm/                    # code specialized for general matrix product computations

    layout/                  # layout definitions for matrices, tensors, and other mathematical objects in memory

    platform/                # CUDA-capable Standard Library components

    reduction/               # bandwidth-limited reduction kernels that do not fit the "gemm" model

    thread/                  # simt code that can be performed within a CUDA thread
    
    transform/               # code specialized for layout, type, and domain transformations

    *                        # core vocabulary types, containers, and basic numeric operations

  cute/                      # CuTe Layout, layout algebra, MMA/Copy atoms, tiled MMA/Copy

    algorithm/               # Definitions of core operations such as copy, gemm, and operations on cute::tuples

    arch/                    # Bare bones PTX wrapper structs for copy and math instructions

    atom/                    # Meta-information either link to or built from arch/ operators

      mma_atom.hpp           # cute::Mma_Atom and cute::TiledMma

      copy_atom.hpp          # cute::Copy_Atom and cute::TiledCopy

      *sm*.hpp               # Arch specific meta-information for copy and math operations

    *                        # Core library types such as Shape, Stride, Layout, Tensor, and associated operations

```

### CUTLASS SDK Examples

[CUTLASS SDK examples](/examples) apply CUTLASS templates to implement basic computations.

### Tools

```
tools/
  library/                   # CUTLASS Instance Library - contains instantiations of all supported CUTLASS templates
    include/
      cutlass/
        library/

  profiler/                  # CUTLASS Profiler         - command-line utility for executing operations in the
                             #                            CUTLASS Library
  
  util/                      # CUTLASS Utilities        - contains numerous helper classes for
    include/                 #                            manging tensors in device memory, reference
      cutlass/               #                            implementations for GEMM, random initialization
        util/                #                            of tensors, and I/O.
```

### Test

The `test/unit/` directory consist of unit tests implemented with Google Test that demonstrate
basic usage of Core API components and complete tests of the CUTLASS GEMM computations.

Instructions for building and running the Unit tests are described in the [Quickstart guide](media/docs/quickstart.md).

# Performance Profiling

The `tools/profiler/` directory contains a command-line utility for launching each of the GEMM kernels.
It can be built as follows:

```bash
$ make cutlass_profiler -j16
```
## Building all GEMM and Convolution kernels (_long_ build times)

By default, only one tile size is instantiated for each data type, math instruction, and layout.
To instantiate all, set the following environment variable when running CMake from an empty `build/` directory.
Beware, this results in *tens of thousands* of kernels and long build times. 
This would also result in a large binary size and on some platforms linker to fail on building the library.
Therefore, it's highly recommended to generate only a subset of kernels as demonstrated in the sub-section below.
```bash
$ cmake .. -DCUTLASS_NVCC_ARCHS=90a -DCUTLASS_LIBRARY_KERNELS=all
...
$ make cutlass_profiler -j16
```

## Building a subset of GEMM and Convolution kernels (_reduced_ build times)

To compile strictly one kernel or a small set of kernels, a comma-delimited list of kernel names with 
wildcard characters may be used to reduce the set of kernels. The following examples show building exactly one
or a subset of kernels for NVIDIA Ampere and Turing architecture:

### Building a subset Tensor Core GEMM kernels

To compile a subset of Tensor Core GEMM kernels with FP32 accumulation and FP16 input targeting NVIDIA Ampere and Turing architecture, 
use the below cmake command line:
```bash
$ cmake .. -DCUTLASS_NVCC_ARCHS='75;80' -DCUTLASS_LIBRARY_KERNELS=cutlass_tensorop_s*gemm_f16_*_nt_align8
...
$ make cutlass_profiler -j16
```

Example command line for profiling a subset of Tensor Core GEMM kernels is as follows:
```bash
./tools/profiler/cutlass_profiler --kernels=cutlass_tensorop_s*gemm_f16_*_nt_align8 --m=3456 --n=4096 --k=4096

...
=============================
  Problem ID: 1

        Provider: CUTLASS
   OperationKind: gemm
       Operation: cutlass_tensorop_s1688gemm_f16_256x128_32x2_nt_align8

          Status: Success
    Verification: ON
     Disposition: Passed

reference_device: Passed
          cuBLAS: Passed

       Arguments: --gemm_kind=universal --m=3456 --n=4096 --k=4096 --A=f16:column --B=f16:row --C=f32:column --alpha=1  \
                  --beta=0 --split_k_slices=1 --batch_count=1 --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=128  \
                  --cta_k=32 --stages=2 --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75  \
                  --max_cc=1024

           Bytes: 118489088  bytes
           FLOPs: 115992428544  flops

         Runtime: 1.55948  ms
          Memory: 70.7616 GiB/s

            Math: 74378.8 GFLOP/s



=============================
...
```

### Building one CUDA Core GEMM kernel

To compile one SGEMM kernel targeting NVIDIA Ampere and Turing architecture, use the below cmake command line:
```bash
$ cmake .. -DCUTLASS_NVCC_ARCHS='75;80' -DCUTLASS_LIBRARY_KERNELS=cutlass_simt_sgemm_128x128_8x2_nn_align1
...
$ make cutlass_profiler -j16
```

Example command line for profiling single SGEMM CUDA kernel is as follows:
```bash
$ ./tools/profiler/cutlass_profiler --kernels=sgemm --m=3456 --n=4096 --k=4096

=============================
  Problem ID: 1

        Provider: CUTLASS
   OperationKind: gemm
       Operation: cutlass_simt_sgemm_128x128_8x2_nn_align1

          Status: Success
    Verification: ON
     Disposition: Passed

          cuBLAS: Passed

       Arguments: --m=3456 --n=4096 --k=4096 --A=f32:column --B=f32:column --C=f32:column --alpha=1 --beta=0 --split_k_slices=1  \
                  --batch_count=1 --op_class=simt --accum=f32 --cta_m=128 --cta_n=128 --cta_k=8 --stages=2 --warps_m=4  \
                  --warps_n=2 --warps_k=1 --inst_m=1 --inst_n=1 --inst_k=1 --min_cc=50 --max_cc=1024

           Bytes: 180355072  bytes
           FLOPs: 115992428544  flops

         Runtime: 6.73655  ms
          Memory: 24.934 GiB/s

            Math: 17218.4 GFLOP/s

=============================
```

### Building a subset of Tensor Core Convolution kernels

To compile a subset of Tensor core convolution kernels implementing forward propagation (fprop) with FP32 accumulation 
and FP16 input targeting NVIDIA Ampere and Turing architecture, use the below cmake command line:
```bash
$ cmake .. -DCUTLASS_NVCC_ARCHS='75;80' -DCUTLASS_LIBRARY_KERNELS=cutlass_tensorop_s*fprop_optimized_f16
...
$ make cutlass_profiler -j16
```

Example command line for profiling a subset of Tensor Core convolution kernels is as follows:

```bash
$ ./tools/profiler/cutlass_profiler --kernels=cutlass_tensorop_s*fprop_optimized_f16 --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3

...
=============================
  Problem ID: 1

        Provider: CUTLASS
   OperationKind: conv2d
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x5_nhwc

          Status: Success
    Verification: ON
     Disposition: Passed

reference_device: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops

         Runtime: 0.711496  ms
          Memory: 1479.99 GiB/s

            Math: 166526 GFLOP/s

=============================
...
```


### Building one Convolution CUDA kernel

To compile and run one CUDA Core convolution kernel implementing forward propagation (fprop) with F32 accumulation 
and FP32 input targeting NVIDIA Ampere and Turing architecture, use the below cmake command line:
```bash
$ cmake .. -DCUTLASS_NVCC_ARCHS='75;80' -DCUTLASS_LIBRARY_KERNELS=cutlass_simt_sfprop_optimized_128x128_8x2_nhwc
...
$ make cutlass_profiler -j16
```

Example command line for profiling one CUDA Core convolution kernel:

```bash
$ ./tools/profiler/cutlass_profiler --kernels=cutlass_simt_sfprop_optimized_128x128_8x2_nhwc --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3


=============================
  Problem ID: 1

        Provider: CUTLASS
   OperationKind: conv2d
       Operation: cutlass_simt_sfprop_optimized_128x128_8x2_nhwc

          Status: Success
    Verification: ON
     Disposition: Passed

reference_device: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f32:nhwc --Filter=f32:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=simt --accum=f32 --cta_m=128 --cta_n=128 --cta_k=8 --stages=2 --warps_m=4  \
                  --warps_n=2 --warps_k=1 --inst_m=1 --inst_n=1 --inst_k=1 --min_cc=50 --max_cc=1024

           Bytes: 2055798784  bytes
           FLOPs: 118482796544  flops

         Runtime: 7.34266  ms
          Memory: 260.752 GiB/s

            Math: 16136.2 GFLOP/s


=============================

```

## More Details on Compiling CUTLASS Kernels and CUTLASS Profiler
- Please follow the links for more CMake examples on selectively compiling CUTLASS kernels:
  - [GEMM CMake Examples](media/docs/quickstart.md#gemm-cmake-examples) 
  - [Implicit GEMM convolution CMake Examples](media/docs/quickstart.md#convolution-cmake-examples)
- [Further details about the CUTLASS Profiler are described here.](media/docs/profiler.md)


# About

CUTLASS is released by NVIDIA Corporation as Open Source software under the 
[3-clause "New" BSD license](LICENSE.txt).

# Contributors

The official list of CUTLASS developers and contributors is available here: [CONTRIBUTORS](CONTRIBUTORS.md).

# Copyright

Copyright (c) 2017 - 2023 NVIDIA CORPORATION & AFFILIATES. All rights reserved.
SPDX-License-Identifier: BSD-3-Clause

```
  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:

  1. Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

  2. Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

  3. Neither the name of the copyright holder nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```