file(REMOVE_RECURSE
  "libcutlass_gemm_sm75_i8832gemm_u4.a"
  "libcutlass_gemm_sm75_i8832gemm_u4.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm75_i8832gemm_u4_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
