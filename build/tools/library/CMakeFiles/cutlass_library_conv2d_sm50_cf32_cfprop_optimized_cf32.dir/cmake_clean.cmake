file(REMOVE_RECURSE
  "libcutlass_conv2d_sm50_cf32_cfprop_optimized_cf32.pdb"
  "libcutlass_conv2d_sm50_cf32_cfprop_optimized_cf32.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv2d_sm50_cf32_cfprop_optimized_cf32.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
