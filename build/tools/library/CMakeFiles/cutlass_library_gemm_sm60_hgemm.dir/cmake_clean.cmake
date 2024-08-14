file(REMOVE_RECURSE
  "libcutlass_gemm_sm60_hgemm.pdb"
  "libcutlass_gemm_sm60_hgemm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm60_hgemm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
