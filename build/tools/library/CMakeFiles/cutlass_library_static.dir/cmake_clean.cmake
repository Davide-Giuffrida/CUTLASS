file(REMOVE_RECURSE
  "libcutlass.a"
  "libcutlass.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CUDA CXX)
  include(CMakeFiles/cutlass_library_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
