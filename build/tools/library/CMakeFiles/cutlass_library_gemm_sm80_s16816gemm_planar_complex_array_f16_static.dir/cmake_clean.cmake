file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s16816gemm_planar_complex_array_f16.a"
  "libcutlass_gemm_sm80_s16816gemm_planar_complex_array_f16.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s16816gemm_planar_complex_array_f16_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
