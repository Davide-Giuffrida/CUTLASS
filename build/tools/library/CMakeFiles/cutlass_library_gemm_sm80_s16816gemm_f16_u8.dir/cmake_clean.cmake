file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s16816gemm_f16_u8.pdb"
  "libcutlass_gemm_sm80_s16816gemm_f16_u8.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s16816gemm_f16_u8.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()