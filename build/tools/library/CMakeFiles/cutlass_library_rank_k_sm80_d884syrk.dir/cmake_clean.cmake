file(REMOVE_RECURSE
  "libcutlass_rank_k_sm80_d884syrk.pdb"
  "libcutlass_rank_k_sm80_d884syrk.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_rank_k_sm80_d884syrk.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
