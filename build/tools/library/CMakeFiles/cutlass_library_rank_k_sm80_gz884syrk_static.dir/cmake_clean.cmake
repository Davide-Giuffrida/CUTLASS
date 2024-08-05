file(REMOVE_RECURSE
  "libcutlass_rank_k_sm80_gz884syrk.a"
  "libcutlass_rank_k_sm80_gz884syrk.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_rank_k_sm80_gz884syrk_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
