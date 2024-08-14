file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_h16832spgemm.a"
  "libcutlass_gemm_sm80_h16832spgemm.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_h16832spgemm_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
