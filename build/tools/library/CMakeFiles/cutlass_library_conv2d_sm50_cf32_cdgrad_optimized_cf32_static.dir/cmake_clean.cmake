file(REMOVE_RECURSE
  "libcutlass_conv2d_sm50_cf32_cdgrad_optimized_cf32.a"
  "libcutlass_conv2d_sm50_cf32_cdgrad_optimized_cf32.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_conv2d_sm50_cf32_cdgrad_optimized_cf32_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
