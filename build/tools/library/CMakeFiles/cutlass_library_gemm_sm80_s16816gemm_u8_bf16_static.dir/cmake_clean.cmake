file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s16816gemm_u8_bf16.a"
  "libcutlass_gemm_sm80_s16816gemm_u8_bf16.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s16816gemm_u8_bf16_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
