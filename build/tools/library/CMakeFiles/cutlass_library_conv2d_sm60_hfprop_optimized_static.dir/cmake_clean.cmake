file(REMOVE_RECURSE
  "libcutlass_conv2d_sm60_hfprop_optimized.a"
  "libcutlass_conv2d_sm60_hfprop_optimized.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv2d_sm60_hfprop_optimized_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
