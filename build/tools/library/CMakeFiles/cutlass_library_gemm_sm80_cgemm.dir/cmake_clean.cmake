file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_cgemm.pdb"
  "libcutlass_gemm_sm80_cgemm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_cgemm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
