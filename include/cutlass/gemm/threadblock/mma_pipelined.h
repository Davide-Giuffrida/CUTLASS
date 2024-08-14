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
    \brief Template for a double-buffered threadblock-scoped GEMM kernel.
*/

#pragma once

#include "cutlass/cutlass.h"
#include "cutlass/array.h"
#include "cutlass/aligned_buffer.h"
#include "cutlass/numeric_conversion.h"

#include "cutlass/numeric_types.h"
#include "cutlass/matrix_shape.h"

#include "cutlass/gemm/gemm.h"
#include "cutlass/gemm/threadblock/mma_base.h"

/////////////////////////////////////////////////////////////////////////////////////////////////

namespace cutlass {
namespace gemm {
namespace threadblock {

/////////////////////////////////////////////////////////////////////////////////////////////////

/// Structure to compute the matrix product targeting CUDA cores and SIMT math instructions.
template <
  /// Size of the Gemm problem - concept: gemm::GemmShape<>
  typename Shape_,
  /// Iterates over tiles of A operand in global memory 
  //  (concept: ReadableTileIterator | ForwardTileIterator | MaskedTileIterator)
  typename IteratorA_,
  /// Iterates over tiles of A operand in shared memory
  /// (concept: WriteableTileIterator | RandomAccessTileIterator)
  typename SmemIteratorA_,
  /// Iterates over tiles of B operand in global memory
  //  (concept: ReadableTileIterator | ForwardTileIterator | MaskedTileIterator)
  typename IteratorB_,
  /// Iterates over tiles of B operand in shared memory
  /// (concept: WriteableTileIterator | RandomAccessTileIterator)
  typename SmemIteratorB_,
  /// Data type of accumulator matrix
  typename ElementC_,
  /// Data type of accumulator matrix
  typename LayoutC_,
  /// Policy describing tuning details (concept: MmaPolicy)
  typename Policy_,
  /// Transformation applied to A operand
  typename TransformA_ = NumericArrayConverter<
    typename SmemIteratorA_::Element, 
    typename IteratorA_::Element, 
    IteratorA_::Fragment::kElements>,
  ///
  /// Transformation applied to B operand
  typename TransformB_ = NumericArrayConverter<
    typename SmemIteratorB_::Element, 
    typename IteratorB_::Element, 
    IteratorB_::Fragment::kElements>,
  /// Used for partial specialization
  typename Enable = bool
>
class MmaPipelined : public MmaBase<Shape_, Policy_, 2> {
public:

  ///< Base class
  using Base = MmaBase<Shape_, Policy_, 2>;

  using Shape = Shape_;             ///< Size of the Gemm problem - concept: gemm::GemmShape<>
  using IteratorA = IteratorA_;     ///< Iterates over tiles of A operand in global memory
  using IteratorB = IteratorB_;     ///< Iterates over tiles of B operand in global memory
  using ElementC = ElementC_;       ///< Data type of accumulator matrix
  using LayoutC = LayoutC_;         ///< Layout of accumulator matrix
  using Policy = Policy_;           ///< Policy describing tuning details

  using SmemIteratorA = SmemIteratorA_;
  using SmemIteratorB = SmemIteratorB_;

  using TransformA = TransformA_;
  using TransformB = TransformB_;

  //
  // Dependent types
  //

  /// Fragment of operand A loaded from global memory
  using FragmentA = typename IteratorA::Fragment;

  /// Fragment of operand B loaded from global memory
  using FragmentB = typename IteratorB::Fragment;

  /// Fragment of accumulator tile
  using FragmentC = typename Policy::Operator::FragmentC;

  /// Warp-level Mma
  using Operator = typename Policy::Operator;

  /// Obtain the arch tag from the warp-level operator
  using ArchTag = typename Policy::Operator::ArchTag;

  /// Complex transform on A operand
  static ComplexTransform const kTransformA = Operator::kTransformA;

  /// Complex transform on B operand
  static ComplexTransform const kTransformB = Operator::kTransformB;

  // staticaly assert kStages for MmaPipelined is two (Double-buffered pipeline)
  static_assert((Base::kStages==2), "MmaPipelined requires kStages set to value 2");

protected:

  //
  // Data members
  //

  /// Warp-level MMA operator
  Operator warp_mma;

  /// Iterator to write threadblock-scoped tile of A operand to shared memory
  SmemIteratorA smem_iterator_A_;

  /// Iterator to write threadblock-scoped tile of B operand to shared memory
  SmemIteratorB smem_iterator_B_;

  ///< transformation applied to A fragment
  TransformA transform_A_;

  ///< transformation applied to B fragment
  TransformB transform_B_;

  /// Shared memory write stage index
  int smem_write_stage_idx;

public:

  /// Construct from tensor references
  CUTLASS_DEVICE
  MmaPipelined(
    typename Base::SharedStorage &shared_storage,       ///< Shared storage needed for internal use by threadblock-scoped GEMM
    int thread_idx,                                     ///< ID within the threadblock
    int warp_idx,                                       ///< ID of warp
    int lane_idx,                                       ///< ID of each thread within a warp
    TransformA transform_A = TransformA(),              ///< transformation applied to A fragment
    TransformB transform_B = TransformB()               ///< transformation applied to B fragment
  ):
    Base(shared_storage, thread_idx, warp_idx, lane_idx),
    smem_iterator_A_(shared_storage.operand_A_ref(), thread_idx),
    smem_iterator_B_(shared_storage.operand_B_ref(), thread_idx),
    transform_A_(transform_A),
    transform_B_(transform_B),
    smem_write_stage_idx(0)
  {

    // Compute warp location within threadblock tile by mapping the warp_id to
    // three coordinates:
    //   _m: the warp's position within the threadblock along the M dimension
    //   _n: the warp's position within the threadblock along the N dimension
    //   _k: the warp's position within the threadblock along the K dimension

    int warp_idx_mn = warp_idx % (Base::WarpCount::kM * Base::WarpCount::kN);
    int warp_idx_k = warp_idx / (Base::WarpCount::kM * Base::WarpCount::kN);

    int warp_idx_m = warp_idx_mn % Base::WarpCount::kM;
    int warp_idx_n = warp_idx_mn / Base::WarpCount::kM;

    // Add per-warp offsets in units of warp-level tiles
    this->warp_tile_iterator_A_.add_tile_offset({warp_idx_m, Base::kWarpGemmIterations * warp_idx_k});
    this->warp_tile_iterator_B_.add_tile_offset({Base::kWarpGemmIterations * warp_idx_k, warp_idx_n});
  }


  /// Advance shared memory write-iterators to the next stage
  CUTLASS_DEVICE
  void advance_smem_write_stage()
  {
    ++this->smem_iterator_A_;
    ++this->smem_iterator_B_;

    // Add negative offsets to return iterators to the 'start' of the circular buffer in shared memory
    if (smem_write_stage_idx == 1) {
      this->smem_iterator_A_.add_tile_offset({0, -Base::kStages});
      this->smem_iterator_B_.add_tile_offset({-Base::kStages, 0});
    }

    smem_write_stage_idx ^= 1;
  }

  /// Advance shared memory read- and write-iterators to the next stage
  CUTLASS_DEVICE
  void advance_smem_stages()
  {
    ++this->smem_iterator_A_;
    ++this->smem_iterator_B_;

    // Add negative offsets to return iterators to the 'start' of the circular buffer in shared memory
    if (smem_write_stage_idx == 1) {
      // wrap write stage
      this->smem_iterator_A_.add_tile_offset({0, -Base::kStages});
      this->smem_iterator_B_.add_tile_offset({-Base::kStages, 0});
    }
    else
    {
      // wrap read stage
      this->warp_tile_iterator_A_.add_tile_offset(
        {0, -Base::kStages * Policy::kPartitionsK * Base::kWarpGemmIterations});
      this->warp_tile_iterator_B_.add_tile_offset(
        {-Base::kStages * Policy::kPartitionsK * Base::kWarpGemmIterations, 0});
    }

    smem_write_stage_idx ^= 1;
  }


  /// GEMM prologue.  Bootstrap the global->shared memory pipeline by fetching
  /// the global fragments needed by the first kStages-1 threadblock mainloop iterations
  CUTLASS_DEVICE
  void prologue(
    IteratorA &iterator_A,      ///< [in|out] iterator over A operand in global memory
    IteratorB &iterator_B,      ///< [in|out] iterator over B operand in global memory
    int &gemm_k_iterations)     ///< [in|out] number of threadblock mainloop iterations remaining
  {
    // The last kblock is loaded in the prolog

    // Load A fragment from global A
    FragmentA tb_frag_A;
    tb_frag_A.clear();
    iterator_A.load(tb_frag_A);
    ++iterator_A;

    // Load B fragment from global B
    FragmentB tb_frag_B;
    tb_frag_B.clear();
    iterator_B.load(tb_frag_B);
    ++iterator_B;

    // Store A and B fragments to shared
    // the store makes it necessary to update the smem iterators (which is done below)
    this->smem_iterator_A_.store(transform_A_(tb_frag_A));
    this->smem_iterator_B_.store(transform_B_(tb_frag_B));

    // Advance write stage
    advance_smem_write_stage();
  }

  /// Wait until we have at least one completed global fetch stage
  CUTLASS_DEVICE
  void gmem_wait()
  {
    __syncthreads();
  }


  /// Perform the specified number of threadblock mainloop iterations of matrix
  /// multiply-accumulate.  Assumes prologue has been initiated.
  CUTLASS_DEVICE
  void gemm_iters(
    int gemm_k_iterations,        ///< number of threadblock mainloop iterations
    FragmentC &accum,             ///< [in|out] accumulator tile
    IteratorA &iterator_A,        ///< [in|out] iterator over A operand in global memory
    IteratorB &iterator_B)        ///< [in|out] iterator over B operand in global memory
  {
    using WarpFragmentA = typename Operator::FragmentA;
    using WarpFragmentB = typename Operator::FragmentB;

    // Pair of fragments used to overlap shared memory loads and math instructions
    WarpFragmentA warp_frag_A[2];
    WarpFragmentB warp_frag_B[2];

    // these are the fragments that are needed for the computation related to the first slice (first iteration of the inner loop)
    // these fragments are stored in warp RF
    // Load A fragment from shared A
    this->warp_tile_iterator_A_.set_kgroup_index(0);
    this->warp_tile_iterator_A_.load(warp_frag_A[0]);
    ++this->warp_tile_iterator_A_;

    // Load B fragment from shared B
    this->warp_tile_iterator_B_.set_kgroup_index(0);
    this->warp_tile_iterator_B_.load(warp_frag_B[0]);
    ++this->warp_tile_iterator_B_;

    // Pair of fragments used to overlap global memory loads and math instructions;
    // array_subbyte.h in include/cutlass for Array Type definition. The Array type is used to build the fragment, since
    // the Fragment type itself is defined as: using Fragment = Array< Element, Policy::MmaIterations::kCount * InstructionShape::kMN / kThreads>;
    FragmentA tb_frag_A;
    FragmentB tb_frag_B;

    // Avoid reading out of bounds
    iterator_A.clear_mask(gemm_k_iterations <= 1);
    iterator_B.clear_mask(gemm_k_iterations <= 1);

    // declare additional accumulators to store the results of the three iterations
    FragmentC accum_array[3];

    // declare helper variables
    int tocopy;

    //
    // Mainloop
    //

    // Note: The main loop does not support Base::kWarpGemmIterations == 2.
    CUTLASS_GEMM_LOOP
    for (; gemm_k_iterations > 0; --gemm_k_iterations) {
      //
      // Loop over GEMM K dimension
      //

      // clear the accumulators before starting the three iterations
      accum_array[0].clear();
      accum_array[1].clear();
      accum_array[2].clear();

      for (int iter = 0; iter < 3; iter++){

        CUTLASS_PRAGMA_UNROLL
        for (int warp_mma_k = 0; warp_mma_k < Base::kWarpGemmIterations; ++warp_mma_k) {

          // Load warp-level tiles from shared memory, wrapping to k offset if this is the last group
          // as the case may be.

          if (warp_mma_k == Base::kWarpGemmIterations - 1 && iter == 2) {
          //if (warp_mma_k == Base::kWarpGemmIterations - 1) {

            // store in shared memory the fragments that will be used in the next iteration of the external loop
            // (they have been read from global memory and stored in tb_frag_X during the inner loop iterations)
            // Write fragments to shared memory
            this->smem_iterator_A_.store(transform_A_(tb_frag_A));

            this->smem_iterator_B_.store(transform_B_(tb_frag_B));

            // Wait until we have at least one completed global fetch stage
            gmem_wait();

            // Advance smem read and write stages
            advance_smem_stages();
          }

          this->warp_tile_iterator_A_.set_kgroup_index((warp_mma_k + 1) % Base::kWarpGemmIterations);
          this->warp_tile_iterator_B_.set_kgroup_index((warp_mma_k + 1) % Base::kWarpGemmIterations);

          // load the second fragments while you perform computation on the first ones (no need for __syncthreads()
          // since the two operations overlap, but how can you be sure that one of them doesn't take more time?)

          this->warp_tile_iterator_A_.load(warp_frag_A[(warp_mma_k + 1) % 2]);
          this->warp_tile_iterator_B_.load(warp_frag_B[(warp_mma_k + 1) % 2]);

          ++this->warp_tile_iterator_A_;
          ++this->warp_tile_iterator_B_;

          if (warp_mma_k == 0 && iter == 2) {
          //if (warp_mma_k == 0) {

            // you need to load new fragments in shared mem (these will be used in the next outer loop iteration)
            // Load fragment from global A
            tb_frag_A.clear();
            iterator_A.load(tb_frag_A);
            ++iterator_A;

            // Load fragment from global B
            tb_frag_B.clear();
            iterator_B.load(tb_frag_B);
            ++iterator_B;

            // Avoid reading out of bounds if this was the last loop iteration
            iterator_A.clear_mask(gemm_k_iterations <= 2);
            iterator_B.clear_mask(gemm_k_iterations <= 2);
          }

          warp_mma(
            // accum_array[iter],
            accum_array[iter],
            warp_frag_A[warp_mma_k % 2],
            warp_frag_B[warp_mma_k % 2],
            // accum);
            accum_array[iter]);
        }

        // resume the old values for the warp_tile_iterators
        for (int warp_mma_k = 0; warp_mma_k < Base::kWarpGemmIterations; ++warp_mma_k) {
          --this->warp_tile_iterator_A_;
          --this->warp_tile_iterator_B_;
        }
        // an additional decrease to point to the original fragments
        --this->warp_tile_iterator_A_;
        --this->warp_tile_iterator_B_;
        // reload fragments 0 (they are needed for the first iteration, since they are computed outside the outer loop at the beginning)
        this->warp_tile_iterator_A_.load(warp_frag_A[0]);
        this->warp_tile_iterator_B_.load(warp_frag_B[0]);
        // re-increase the iterators, to make them point to the fragment 1 that will be fetched during the first iteration of the inner loop
        ++this->warp_tile_iterator_A_;
        ++this->warp_tile_iterator_B_;
        
      }


      for (int i = 0; i < int(accum.kStorageElements); ++i) {
        accum.raw_data()[i] = accum_array[2].raw_data()[i];
      }
      
      // compare the three results to check if they are the same
      for (int i = 0; i < int(accum.kStorageElements); ++i) {
        if(accum_array[0].raw_data()[i] == accum_array[1].raw_data()[i]){
          // if they are the same then you can assign their value to the actual accum, which will be returned by the function
          // you have to copy the array values one by one, because the accum_array is declared inside this method (it could be deallocated when you leave)
          tocopy = 0;
        } else if (accum_array[0].raw_data()[i] == accum_array[2].raw_data()[i]){
          // the same as before, copy the first array into the destination accumulator
          tocopy = 0;
        } else if (accum_array[1].raw_data()[i] == accum_array[2].raw_data()[i]){
          tocopy = 1;
        } else {
          // find a way to propagate an error and return it as an output of the cuda call
        }
        // perform the actual copy operation
        // accum.raw_data()[i] = accum_array[tocopy].raw_data()[i];
      }
    }

  }


  /// Prepares the class for another prologue.
  CUTLASS_DEVICE
  void wind_down()
  {
    // First, increment remaining warp tiles to catch it up with the write stage.
    #pragma unroll
    for (int warp_mma_k = 1; warp_mma_k < Base::kWarpGemmIterations; ++warp_mma_k)
    {
      this->warp_tile_iterator_A_.set_kgroup_index(warp_mma_k);
      this->warp_tile_iterator_B_.set_kgroup_index(warp_mma_k);

      ++this->warp_tile_iterator_A_;
      ++this->warp_tile_iterator_B_;
    }

    // If we bumped the read iterators to the end of the circular buffer, wrap them around to
    // align them with the write iterators
    if (smem_write_stage_idx == 0)
    {
      this->warp_tile_iterator_A_.add_tile_offset(
        {0, -Base::kStages * Policy::kPartitionsK * Base::kWarpGemmIterations});
      this->warp_tile_iterator_B_.add_tile_offset(
        {-Base::kStages * Policy::kPartitionsK * Base::kWarpGemmIterations, 0});
    }
  }

  /// Perform a threadblock-scoped matrix multiply-accumulate
  CUTLASS_DEVICE
  void operator()(
    int gemm_k_iterations,                            ///< number of iterations of the mainloop
    FragmentC &accum,                                 ///< destination accumulator tile
    IteratorA iterator_A,                             ///< iterator over A operand in global memory
    IteratorB iterator_B,                             ///< iterator over B operand in global memory
    FragmentC const &src_accum)                       ///< source accumulator tile
  {
    // Prologue
    prologue(iterator_A, iterator_B, gemm_k_iterations);

    // Wait until we have at least one completed global fetch stage
    gmem_wait();

    // Perform accumulation in the 'd' output operand
    accum = src_accum;

    // Perform the MAC-iterations
    gemm_iters(gemm_k_iterations, accum, iterator_A, iterator_B);
  }

};

/////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace threadblock
} // namespace gemm
} // namespace cutlass

/////////////////////////////////////////////////////////////////////////////////////////////////
