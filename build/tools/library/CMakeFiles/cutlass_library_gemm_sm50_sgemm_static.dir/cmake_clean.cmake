file(REMOVE_RECURSE
  "libcutlass_gemm_sm50_sgemm.a"
  "libcutlass_gemm_sm50_sgemm.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm50_sgemm_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
