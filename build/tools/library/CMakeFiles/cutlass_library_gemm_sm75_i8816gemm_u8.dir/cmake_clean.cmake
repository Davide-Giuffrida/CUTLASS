file(REMOVE_RECURSE
  "libcutlass_gemm_sm75_i8816gemm_u8.pdb"
  "libcutlass_gemm_sm75_i8816gemm_u8.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA)
  include(CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
