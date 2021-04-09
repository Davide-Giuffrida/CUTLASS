/**************************************************************************************************
 Copyright (c) 2017-2021, NVIDIA CORPORATION.  All rights reserved.

 Redistribution and use in source and binary forms, with or without modification, are permitted
 provided that the following conditions are met:
     * Redistributions of source code must retain the above copyright notice, this list of
       conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above copyright notice, this list of
       conditions and the following disclaimer in the documentation and/or other materials
       provided with the distribution.
     * Neither the name of the NVIDIA CORPORATION nor the names of its contributors may be used
       to endorse or promote products derived from this software without specific prior written
       permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL NVIDIA CORPORATION BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TOR (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 **************************************************************************************************/
/*! \file
    \brief Tests for device-wide GEMM interface
*/

#include <iostream>

#include "../../common/cutlass_unit_test.h"
#include "cutlass/cutlass.h"
#include "cutlass/gemm/device/gemm.h"
#include "cutlass/util/host_tensor.h"
#include "cutlass/util/reference/host/gemm.h"
#include "cutlass/util/reference/host/tensor_compare.h"
#include "cutlass/util/reference/host/tensor_copy.h"
#include "cutlass/util/reference/host/tensor_fill.h"
#include "cutlass/util/tensor_view_io.h"

#include "testbed.h"

#if (CUTLASS_ARCH_MMA_SM80_SUPPORTED)

////////////////////////////////////////////////////////////////////////////////

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 128x256x256_64x64x256, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<128, 256, 256>,
      cutlass::gemm::GemmShape<64, 64, 256>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 256x128x256_64x64x256, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<256, 128, 256>,
      cutlass::gemm::GemmShape<64, 64, 256>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 128x128x256_64x64x256, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<128, 128, 256>,
      cutlass::gemm::GemmShape<64, 64, 256>,
      cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 256x64x256_64x64x256, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<256, 64, 256>,
      cutlass::gemm::GemmShape<64, 64, 256>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 64x256x256_64x64x256, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<64, 256, 256>,
      cutlass::gemm::GemmShape<64, 64, 256>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 64x128x256_32x64x256, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<64, 128, 256>,
      cutlass::gemm::GemmShape<32, 64, 256>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 128x64x256_64x32x256, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<128, 64, 256>,
      cutlass::gemm::GemmShape<64, 32, 256>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 64x64x256_32x32x256, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<64, 64, 256>,
      cutlass::gemm::GemmShape<32, 32, 256>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 4>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 128x256x128_64x64x128, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<128, 256, 128>,
      cutlass::gemm::GemmShape<64, 64, 128>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 256x128x128_64x64x128, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<256, 128, 128>,
      cutlass::gemm::GemmShape<64, 64, 128>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 128x128x128_64x64x128, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<128, 128, 128>,
      cutlass::gemm::GemmShape<64, 64, 128>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 256x64x128_64x64x128, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<256, 64, 128>,
      cutlass::gemm::GemmShape<64, 64, 128>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 64x256x128_64x64x128, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<64, 256, 128>,
      cutlass::gemm::GemmShape<64, 64, 128>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 3>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 64x256x128_32x64x128, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<64, 128, 128>,
      cutlass::gemm::GemmShape<32, 64, 128>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 4>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 128x64x128_64x32x128, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<128, 64, 128>,
      cutlass::gemm::GemmShape<64, 32, 128>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 4>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

CUTLASS_TEST_L1(SM80_Device_Gemm_s4t_s4n_s32t_tensor_op_s32, 64x64x128_32x32x128, {
  using ElementOutput = int32_t;
  using ElementAccumulator = int32_t;
  using ElementCompute = int32_t;

  using Gemm = cutlass::gemm::device::Gemm<
      cutlass::int4b_t, cutlass::layout::RowMajor, cutlass::int4b_t,
      cutlass::layout::ColumnMajor, ElementOutput, cutlass::layout::RowMajor,
      ElementAccumulator, cutlass::arch::OpClassTensorOp, cutlass::arch::Sm80,
      cutlass::gemm::GemmShape<64, 64, 128>,
      cutlass::gemm::GemmShape<32, 32, 128>, cutlass::gemm::GemmShape<16, 8, 64>,
      cutlass::epilogue::thread::LinearCombinationClamp<
          ElementOutput, 128 / cutlass::sizeof_bits<ElementOutput>::value,
          ElementAccumulator, ElementCompute>,
      cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<>, 6>;

  EXPECT_TRUE(test::gemm::device::TestAllGemm<Gemm>());
} )

////////////////////////////////////////////////////////////////////////////////

#endif // #if (CUTLASS_ARCH_MMA_SM80_SUPPORTED)

////////////////////////////////////////////////////////////////////////////////
