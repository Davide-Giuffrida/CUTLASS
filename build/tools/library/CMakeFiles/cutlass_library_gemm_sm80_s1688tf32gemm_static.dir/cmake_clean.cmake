file(REMOVE_RECURSE
  "libcutlass_gemm_sm80_s1688tf32gemm.a"
  "libcutlass_gemm_sm80_s1688tf32gemm.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm80_s1688tf32gemm_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
