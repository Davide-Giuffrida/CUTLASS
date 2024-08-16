
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_s1688gemm_128x128_16x4_nn_align4(Manifest &manifest);
void initialize_cutlass_tensorop_s1688gemm_128x128_16x4_nt_align4(Manifest &manifest);
void initialize_cutlass_tensorop_s1688gemm_128x128_16x4_tn_align4(Manifest &manifest);
void initialize_cutlass_tensorop_s1688gemm_128x128_16x4_tt_align4(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm80_s1688gemm_gemm_operations(Manifest &manifest) {
  initialize_cutlass_tensorop_s1688gemm_128x128_16x4_nn_align4(manifest);
  initialize_cutlass_tensorop_s1688gemm_128x128_16x4_nt_align4(manifest);
  initialize_cutlass_tensorop_s1688gemm_128x128_16x4_tn_align4(manifest);
  initialize_cutlass_tensorop_s1688gemm_128x128_16x4_tt_align4(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass
