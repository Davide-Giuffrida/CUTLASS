file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_h16816gemm_planar_complex.a"
  "libcutlass_gemm_sm80_h16816gemm_planar_complex.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_h16816gemm_planar_complex_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
