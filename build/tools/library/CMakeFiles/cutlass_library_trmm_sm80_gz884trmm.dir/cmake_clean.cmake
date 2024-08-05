file(REMOVE_RECURSE
  "libcutlass_trmm_sm80_gz884trmm.pdb"
  "libcutlass_trmm_sm80_gz884trmm.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_trmm_sm80_gz884trmm.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
