file(REMOVE_RECURSE
  "libcutlass_gemm_sm75_i88128xorgemm_b1.pdb"
  "libcutlass_gemm_sm75_i88128xorgemm_b1.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm75_i88128xorgemm_b1.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
