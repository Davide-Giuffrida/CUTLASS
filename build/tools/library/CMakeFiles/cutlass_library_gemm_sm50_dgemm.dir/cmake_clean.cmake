file(REMOVE_RECURSE
  "libcutlass_gemm_sm50_dgemm.pdb"
  "libcutlass_gemm_sm50_dgemm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm50_dgemm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
