
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_simt_swgrad_optimized_128x128_8x2_nhwc_align1(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm50_swgrad_optimized_conv2d_operations(Manifest &manifest) {
  initialize_cutlass_simt_swgrad_optimized_128x128_8x2_nhwc_align1(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass
