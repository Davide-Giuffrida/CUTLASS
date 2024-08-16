
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_s16816fprop_fixed_channels_bf16_256x128_32x3_nhwc_align4(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm80_s16816fprop_fixed_channels_bf16_conv2d_operations(Manifest &manifest) {
  initialize_cutlass_tensorop_s16816fprop_fixed_channels_bf16_256x128_32x3_nhwc_align4(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass
