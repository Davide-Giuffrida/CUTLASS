file(REMOVE_RECURSE
  "libcutlass_conv3d_sm80_bf16_s16816dgrad3d_optimized_bf16.pdb"
  "libcutlass_conv3d_sm80_bf16_s16816dgrad3d_optimized_bf16.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv3d_sm80_bf16_s16816dgrad3d_optimized_bf16.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
