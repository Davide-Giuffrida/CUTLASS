file(REMOVE_RECURSE
  "libcutlass_conv3d_sm80_s16816fprop3d_optimized_f16.a"
  "libcutlass_conv3d_sm80_s16816fprop3d_optimized_f16.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv3d_sm80_s16816fprop3d_optimized_f16_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()