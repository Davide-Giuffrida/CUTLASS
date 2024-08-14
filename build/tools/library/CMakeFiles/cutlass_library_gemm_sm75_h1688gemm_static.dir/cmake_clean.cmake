file(REMOVE_RECURSE
  "libcutlass_gemm_sm75_h1688gemm.a"
  "libcutlass_gemm_sm75_h1688gemm.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm75_h1688gemm_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
