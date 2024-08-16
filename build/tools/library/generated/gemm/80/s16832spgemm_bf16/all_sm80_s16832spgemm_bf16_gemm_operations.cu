
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_nn_align8(Manifest &manifest);
void initialize_cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_nt_align8(Manifest &manifest);
void initialize_cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_tn_align8(Manifest &manifest);
void initialize_cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_tt_align8(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm80_s16832spgemm_bf16_gemm_operations(Manifest &manifest) {
  initialize_cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_nn_align8(manifest);
  initialize_cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_nt_align8(manifest);
  initialize_cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_tn_align8(manifest);
  initialize_cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_tt_align8(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass
