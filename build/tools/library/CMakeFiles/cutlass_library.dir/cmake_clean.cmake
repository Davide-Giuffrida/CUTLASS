file(REMOVE_RECURSE
  "libcutlass.pdb"
  "libcutlass.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA CXX)
  include(CMakeFiles/cutlass_library.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
