file(REMOVE_RECURSE
  "libcutlass_rank_k_sm80_gz884herk.a"
  "libcutlass_rank_k_sm80_gz884herk.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_rank_k_sm80_gz884herk_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
