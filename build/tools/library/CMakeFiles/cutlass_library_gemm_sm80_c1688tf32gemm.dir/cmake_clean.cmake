file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_c1688tf32gemm.pdb"
  "libcutlass_gemm_sm80_c1688tf32gemm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_c1688tf32gemm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
