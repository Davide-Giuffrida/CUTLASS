file(REMOVE_RECURSE
  "libcutlass_rank_k_sm80_s1688tf32syrk.pdb"
  "libcutlass_rank_k_sm80_s1688tf32syrk.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_rank_k_sm80_s1688tf32syrk.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
