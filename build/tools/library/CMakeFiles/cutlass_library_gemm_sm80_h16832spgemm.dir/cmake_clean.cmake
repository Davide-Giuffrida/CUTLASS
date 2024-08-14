file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_h16832spgemm.pdb"
  "libcutlass_gemm_sm80_h16832spgemm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_h16832spgemm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
