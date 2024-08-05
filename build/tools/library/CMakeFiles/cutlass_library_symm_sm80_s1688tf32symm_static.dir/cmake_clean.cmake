file(REMOVE_RECURSE
  "libcutlass_symm_sm80_s1688tf32symm.a"
  "libcutlass_symm_sm80_s1688tf32symm.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_symm_sm80_s1688tf32symm_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
