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

# Utility rule file for test_examples_05_batched_gemm.

# Include any custom commands dependencies for this target.
include examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/progress.make

examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm: examples/05_batched_gemm/05_batched_gemm
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/examples/05_batched_gemm && ./05_batched_gemm

test_examples_05_batched_gemm: examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm
test_examples_05_batched_gemm: examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/build.make
.PHONY : test_examples_05_batched_gemm

# Rule to build all files generated by this target.
examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/build: test_examples_05_batched_gemm
.PHONY : examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/build

examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/examples/05_batched_gemm && $(CMAKE_COMMAND) -P CMakeFiles/test_examples_05_batched_gemm.dir/cmake_clean.cmake
.PHONY : examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/clean

examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/examples/05_batched_gemm /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/examples/05_batched_gemm /home/m.gpuprog/cutlass_project/CUTLASS/build/examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/05_batched_gemm/CMakeFiles/test_examples_05_batched_gemm.dir/depend

