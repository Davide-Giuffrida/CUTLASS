
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_s8_i16832fprop_few_channels_s8_256x128_64x3_nhwc_align16(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm80_s8_i16832fprop_few_channels_s8_conv2d_operations(Manifest &manifest) {
  initialize_cutlass_tensorop_s8_i16832fprop_few_channels_s8_256x128_64x3_nhwc_align16(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass

