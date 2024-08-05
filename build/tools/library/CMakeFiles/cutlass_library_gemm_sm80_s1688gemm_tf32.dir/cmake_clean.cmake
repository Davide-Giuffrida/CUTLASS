file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s1688gemm_tf32.pdb"
  "libcutlass_gemm_sm80_s1688gemm_tf32.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s1688gemm_tf32.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
