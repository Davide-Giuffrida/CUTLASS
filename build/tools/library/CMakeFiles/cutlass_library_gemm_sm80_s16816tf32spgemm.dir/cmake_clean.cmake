file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s16816tf32spgemm.pdb"
  "libcutlass_gemm_sm80_s16816tf32spgemm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s16816tf32spgemm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
