# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/m.gpuprog/cmake_tmp/cmake-3.20.0/bin/cmake

# The command to remove a file.
RM = /home/m.gpuprog/cmake_tmp/cmake-3.20.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/m.gpuprog/cutlass_project/CUTLASS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/m.gpuprog/cutlass_project/CUTLASS/build

# Include any dependencies generated for this target.
include examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/progress.make

# Include the compile flags for this target's objects.
include examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/flags.make

examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.o: examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/flags.make
examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.o: ../examples/43_ell_block_sparse_gemm/ell_block_sparse_gemm.cu
examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.o: examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/examples/43_ell_block_sparse_gemm && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.o -MF CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/examples/43_ell_block_sparse_gemm/ell_block_sparse_gemm.cu -o CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.o

examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target 43_ell_block_sparse_gemm
43_ell_block_sparse_gemm_OBJECTS = \
"CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.o"

# External object files for target 43_ell_block_sparse_gemm
43_ell_block_sparse_gemm_EXTERNAL_OBJECTS =

examples/43_ell_block_sparse_gemm/43_ell_block_sparse_gemm: examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/ell_block_sparse_gemm.cu.o
examples/43_ell_block_sparse_gemm/43_ell_block_sparse_gemm: examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/build.make
examples/43_ell_block_sparse_gemm/43_ell_block_sparse_gemm: examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA executable 43_ell_block_sparse_gemm"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/examples/43_ell_block_sparse_gemm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/43_ell_block_sparse_gemm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/build: examples/43_ell_block_sparse_gemm/43_ell_block_sparse_gemm
.PHONY : examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/build

examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/examples/43_ell_block_sparse_gemm && $(CMAKE_COMMAND) -P CMakeFiles/43_ell_block_sparse_gemm.dir/cmake_clean.cmake
.PHONY : examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/clean

examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/examples/43_ell_block_sparse_gemm /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/examples/43_ell_block_sparse_gemm /home/m.gpuprog/cutlass_project/CUTLASS/build/examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/43_ell_block_sparse_gemm/CMakeFiles/43_ell_block_sparse_gemm.dir/depend
