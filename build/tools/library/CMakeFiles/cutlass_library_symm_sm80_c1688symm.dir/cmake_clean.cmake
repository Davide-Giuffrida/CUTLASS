file(REMOVE_RECURSE
  "libcutlass_symm_sm80_c1688symm.pdb"
  "libcutlass_symm_sm80_c1688symm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_symm_sm80_c1688symm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
