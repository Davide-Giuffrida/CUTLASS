file(REMOVE_RECURSE
  "libcutlass_conv2d_sm80_f16_s16816fprop_fixed_channels_f16.a"
  "libcutlass_conv2d_sm80_f16_s16816fprop_fixed_channels_f16.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv2d_sm80_f16_s16816fprop_fixed_channels_f16_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()