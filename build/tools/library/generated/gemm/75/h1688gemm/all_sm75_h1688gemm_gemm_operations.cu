
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_h1688gemm_256x128_32x2_nn_align8(Manifest &manifest);
void initialize_cutlass_tensorop_h1688gemm_256x128_32x2_nt_align8(Manifest &manifest);
void initialize_cutlass_tensorop_h1688gemm_256x128_32x2_tn_align8(Manifest &manifest);
void initialize_cutlass_tensorop_h1688gemm_256x128_32x2_tt_align8(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm75_h1688gemm_gemm_operations(Manifest &manifest) {
  initialize_cutlass_tensorop_h1688gemm_256x128_32x2_nn_align8(manifest);
  initialize_cutlass_tensorop_h1688gemm_256x128_32x2_nt_align8(manifest);
  initialize_cutlass_tensorop_h1688gemm_256x128_32x2_tn_align8(manifest);
  initialize_cutlass_tensorop_h1688gemm_256x128_32x2_tt_align8(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass
