file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_i16864gemm_u4.pdb"
  "libcutlass_gemm_sm80_i16864gemm_u4.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_i16864gemm_u4.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
