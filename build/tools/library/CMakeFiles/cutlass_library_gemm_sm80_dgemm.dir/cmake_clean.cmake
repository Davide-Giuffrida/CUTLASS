file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_dgemm.pdb"
  "libcutlass_gemm_sm80_dgemm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_dgemm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
