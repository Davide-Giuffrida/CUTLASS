
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_z884hemm_128x64_8x3_n_ls_l_align1(Manifest &manifest);
void initialize_cutlass_tensorop_z884hemm_128x64_8x3_n_ls_u_align1(Manifest &manifest);
void initialize_cutlass_tensorop_z884hemm_128x64_8x3_n_rs_l_align1(Manifest &manifest);
void initialize_cutlass_tensorop_z884hemm_128x64_8x3_n_rs_u_align1(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm80_z884hemm_symm_operations(Manifest &manifest) {
  initialize_cutlass_tensorop_z884hemm_128x64_8x3_n_ls_l_align1(manifest);
  initialize_cutlass_tensorop_z884hemm_128x64_8x3_n_ls_u_align1(manifest);
  initialize_cutlass_tensorop_z884hemm_128x64_8x3_n_rs_l_align1(manifest);
  initialize_cutlass_tensorop_z884hemm_128x64_8x3_n_rs_u_align1(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass

