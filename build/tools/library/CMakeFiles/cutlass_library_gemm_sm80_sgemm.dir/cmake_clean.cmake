file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_sgemm.pdb"
  "libcutlass_gemm_sm80_sgemm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_sgemm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
