file(REMOVE_RECURSE
  "libcutlass_gemm_sm75_i8832gemm_s4.pdb"
  "libcutlass_gemm_sm75_i8832gemm_s4.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm75_i8832gemm_s4.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()