
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_bf16_s16816fprop3d_optimized_bf16_256x128_32x3(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm80_bf16_s16816fprop3d_optimized_bf16_conv3d_operations(Manifest &manifest) {
  initialize_cutlass_tensorop_bf16_s16816fprop3d_optimized_bf16_256x128_32x3(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass

