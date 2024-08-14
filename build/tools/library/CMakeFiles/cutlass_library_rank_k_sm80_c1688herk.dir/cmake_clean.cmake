file(REMOVE_RECURSE
  "libcutlass_rank_k_sm80_c1688herk.pdb"
  "libcutlass_rank_k_sm80_c1688herk.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_rank_k_sm80_c1688herk.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
