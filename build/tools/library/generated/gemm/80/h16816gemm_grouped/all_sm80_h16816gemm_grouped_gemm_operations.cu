
/*
 Generated by manifest.py - Do not edit.
*/

#include "cutlass/cutlass.h"
#include "cutlass/library/library.h"
#include "cutlass/library/manifest.h"

namespace cutlass {
namespace library {

///////////////////////////////////////////////////////////////////////////////////////////////////

void initialize_cutlass_tensorop_h16816gemm_grouped_256x128_32x3_nn_align8_scheduleDevice(Manifest &manifest);
void initialize_cutlass_tensorop_h16816gemm_grouped_256x128_32x3_nt_align8_scheduleDevice(Manifest &manifest);
void initialize_cutlass_tensorop_h16816gemm_grouped_256x128_32x3_tn_align8_scheduleDevice(Manifest &manifest);
void initialize_cutlass_tensorop_h16816gemm_grouped_256x128_32x3_tt_align8_scheduleDevice(Manifest &manifest);


//
// Entry point to construct operations
//
void initialize_all_sm80_h16816gemm_grouped_gemm_operations(Manifest &manifest) {
  initialize_cutlass_tensorop_h16816gemm_grouped_256x128_32x3_nn_align8_scheduleDevice(manifest);
  initialize_cutlass_tensorop_h16816gemm_grouped_256x128_32x3_nt_align8_scheduleDevice(manifest);
  initialize_cutlass_tensorop_h16816gemm_grouped_256x128_32x3_tn_align8_scheduleDevice(manifest);
  initialize_cutlass_tensorop_h16816gemm_grouped_256x128_32x3_tt_align8_scheduleDevice(manifest);
}

///////////////////////////////////////////////////////////////////////////////////////////////////

} // namespace library
} // namespace cutlass
