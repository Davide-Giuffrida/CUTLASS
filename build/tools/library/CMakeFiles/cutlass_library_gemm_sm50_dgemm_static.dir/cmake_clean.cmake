file(REMOVE_RECURSE
  "libcutlass_gemm_sm50_dgemm.a"
  "libcutlass_gemm_sm50_dgemm.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm50_dgemm_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()