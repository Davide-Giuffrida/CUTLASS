file(REMOVE_RECURSE
  "libcutlass_conv2d_sm80_s16816fprop_fixed_channels_bf16.a"
  "libcutlass_conv2d_sm80_s16816fprop_fixed_channels_bf16.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv2d_sm80_s16816fprop_fixed_channels_bf16_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()