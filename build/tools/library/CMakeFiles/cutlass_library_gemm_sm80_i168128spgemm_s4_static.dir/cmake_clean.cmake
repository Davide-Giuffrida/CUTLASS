file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_i168128spgemm_s4.a"
  "libcutlass_gemm_sm80_i168128spgemm_s4.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_i168128spgemm_s4_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()