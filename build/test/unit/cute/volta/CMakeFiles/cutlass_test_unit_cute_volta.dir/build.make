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
include test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/compiler_depend.make

# Include the progress variables for this target.
include test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/progress.make

# Include the compile flags for this target's objects.
include test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/flags.make

test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.o: test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/flags.make
test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.o: ../test/unit/cute/volta/vectorization_auto.cu
test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.o: test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/volta && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.o -MF CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/cute/volta/vectorization_auto.cu -o CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.o

test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cutlass_test_unit_cute_volta
cutlass_test_unit_cute_volta_OBJECTS = \
"CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.o"

# External object files for target cutlass_test_unit_cute_volta
cutlass_test_unit_cute_volta_EXTERNAL_OBJECTS = \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/CMakeFiles/cutlass_test_unit_infra.dir/common/filter_architecture.cpp.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/CMakeFiles/cutlass_test_unit_infra_lib.dir/test_unit.cpp.o"

test/unit/cute/volta/cutlass_test_unit_cute_volta: test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/vectorization_auto.cu.o
test/unit/cute/volta/cutlass_test_unit_cute_volta: test/unit/CMakeFiles/cutlass_test_unit_infra.dir/common/filter_architecture.cpp.o
test/unit/cute/volta/cutlass_test_unit_cute_volta: test/unit/CMakeFiles/cutlass_test_unit_infra_lib.dir/test_unit.cpp.o
test/unit/cute/volta/cutlass_test_unit_cute_volta: test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/build.make
test/unit/cute/volta/cutlass_test_unit_cute_volta: lib/libgtest.a
test/unit/cute/volta/cutlass_test_unit_cute_volta: /usr/local/cuda-11.6/lib64/libcudart.so
test/unit/cute/volta/cutlass_test_unit_cute_volta: /usr/local/cuda-11.6/lib64/stubs/libcuda.so
test/unit/cute/volta/cutlass_test_unit_cute_volta: test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cutlass_test_unit_cute_volta"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/volta && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cutlass_test_unit_cute_volta.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/build: test/unit/cute/volta/cutlass_test_unit_cute_volta
.PHONY : test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/build

test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/volta && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_test_unit_cute_volta.dir/cmake_clean.cmake
.PHONY : test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/clean

test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/cute/volta /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/volta /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/unit/cute/volta/CMakeFiles/cutlass_test_unit_cute_volta.dir/depend

