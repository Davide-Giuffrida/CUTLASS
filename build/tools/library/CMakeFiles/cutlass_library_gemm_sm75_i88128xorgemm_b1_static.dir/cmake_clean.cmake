file(REMOVE_RECURSE
  "libcutlass_gemm_sm75_i88128xorgemm_b1.a"
  "libcutlass_gemm_sm75_i88128xorgemm_b1.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm75_i88128xorgemm_b1_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
