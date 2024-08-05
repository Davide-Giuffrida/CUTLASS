file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_c1688gemm.pdb"
  "libcutlass_gemm_sm80_c1688gemm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_c1688gemm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
