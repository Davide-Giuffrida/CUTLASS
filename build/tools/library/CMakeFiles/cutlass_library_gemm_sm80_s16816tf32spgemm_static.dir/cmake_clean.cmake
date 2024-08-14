file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s16816tf32spgemm.a"
  "libcutlass_gemm_sm80_s16816tf32spgemm.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s16816tf32spgemm_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
