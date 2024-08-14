file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s8_i16832gemm_s8.pdb"
  "libcutlass_gemm_sm80_s8_i16832gemm_s8.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s8_i16832gemm_s8.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
