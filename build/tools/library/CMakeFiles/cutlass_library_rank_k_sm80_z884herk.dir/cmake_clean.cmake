file(REMOVE_RECURSE
  "libcutlass_rank_k_sm80_z884herk.pdb"
  "libcutlass_rank_k_sm80_z884herk.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_rank_k_sm80_z884herk.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
