file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s8_i16864spgemm_s8.a"
  "libcutlass_gemm_sm80_s8_i16864spgemm_s8.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s8_i16864spgemm_s8_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()