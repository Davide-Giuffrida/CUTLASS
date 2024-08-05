file(REMOVE_RECURSE
  "libcutlass_conv2d_sm80_bf16_s16816fprop_optimized_bf16.pdb"
  "libcutlass_conv2d_sm80_bf16_s16816fprop_optimized_bf16.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv2d_sm80_bf16_s16816fprop_optimized_bf16.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
