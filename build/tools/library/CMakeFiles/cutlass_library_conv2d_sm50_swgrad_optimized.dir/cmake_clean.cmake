file(REMOVE_RECURSE
  "libcutlass_conv2d_sm50_swgrad_optimized.pdb"
  "libcutlass_conv2d_sm50_swgrad_optimized.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv2d_sm50_swgrad_optimized.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
