file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_h16816gemm_planar_complex.pdb"
  "libcutlass_gemm_sm80_h16816gemm_planar_complex.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_h16816gemm_planar_complex.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
