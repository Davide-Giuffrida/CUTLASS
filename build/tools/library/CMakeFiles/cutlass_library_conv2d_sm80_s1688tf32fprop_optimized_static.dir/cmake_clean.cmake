file(REMOVE_RECURSE
  "libcutlass_conv2d_sm80_s1688tf32fprop_optimized.a"
  "libcutlass_conv2d_sm80_s1688tf32fprop_optimized.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv2d_sm80_s1688tf32fprop_optimized_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
