file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_h16816gemm_grouped.a"
  "libcutlass_gemm_sm80_h16816gemm_grouped.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_h16816gemm_grouped_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
