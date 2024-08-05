
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_simt_cf32_cwgrad_optimized_cf32_128x64_8x2_nhwc_align1(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm50_cf32_cwgrad_optimized_cf32_conv2d_operations(Manifest &manifest) {
  initialize_cutlass_simt_cf32_cwgrad_optimized_cf32_128x64_8x2_nhwc_align1(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass

