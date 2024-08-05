file(REMOVE_RECURSE
  "libcutlass_conv2d_sm80_s1688tf32fprop_optimized.pdb"
  "libcutlass_conv2d_sm80_s1688tf32fprop_optimized.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv2d_sm80_s1688tf32fprop_optimized.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
