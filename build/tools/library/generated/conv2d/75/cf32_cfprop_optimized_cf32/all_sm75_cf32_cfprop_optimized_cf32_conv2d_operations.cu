
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_simt_cf32_cfprop_optimized_cf32_128x128_8x5_nhwc_align1(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm75_cf32_cfprop_optimized_cf32_conv2d_operations(Manifest &manifest) {
  initialize_cutlass_simt_cf32_cfprop_optimized_cf32_128x128_8x5_nhwc_align1(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass

