file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_i16832gemm_u8.a"
  "libcutlass_gemm_sm80_i16832gemm_u8.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_i16832gemm_u8_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
