file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s16816gemm_s8_f16.pdb"
  "libcutlass_gemm_sm80_s16816gemm_s8_f16.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s16816gemm_s8_f16.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
