file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s16816gemm_f16_u8.a"
  "libcutlass_gemm_sm80_s16816gemm_f16_u8.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s16816gemm_f16_u8_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
