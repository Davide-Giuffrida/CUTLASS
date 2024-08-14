file(REMOVE_RECURSE
  "libcutlass_gemm_sm60_hgemm.a"
  "libcutlass_gemm_sm60_hgemm.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm60_hgemm_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
