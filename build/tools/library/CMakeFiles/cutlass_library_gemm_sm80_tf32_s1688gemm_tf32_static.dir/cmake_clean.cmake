file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_tf32_s1688gemm_tf32.a"
  "libcutlass_gemm_sm80_tf32_s1688gemm_tf32.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_tf32_s1688gemm_tf32_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
