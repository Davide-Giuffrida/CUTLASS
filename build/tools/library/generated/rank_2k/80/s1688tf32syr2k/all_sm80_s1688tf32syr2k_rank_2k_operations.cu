
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_s1688tf32syr2k_256x128_16x3_n_l_align1(Manifest &manifest);
void initialize_cutlass_tensorop_s1688tf32syr2k_256x128_16x3_n_u_align1(Manifest &manifest);
void initialize_cutlass_tensorop_s1688tf32syr2k_256x128_16x3_t_l_align1(Manifest &manifest);
void initialize_cutlass_tensorop_s1688tf32syr2k_256x128_16x3_t_u_align1(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm80_s1688tf32syr2k_rank_2k_operations(Manifest &manifest) {
  initialize_cutlass_tensorop_s1688tf32syr2k_256x128_16x3_n_l_align1(manifest);
  initialize_cutlass_tensorop_s1688tf32syr2k_256x128_16x3_n_u_align1(manifest);
  initialize_cutlass_tensorop_s1688tf32syr2k_256x128_16x3_t_l_align1(manifest);
  initialize_cutlass_tensorop_s1688tf32syr2k_256x128_16x3_t_u_align1(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass

