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
include tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/progress.make

# Include the compile flags for this target's objects.
include tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/flags.make

# Object files for target cutlass_library_gemm_sm80_i16864spgemm_s8
cutlass_library_gemm_sm80_i16864spgemm_s8_OBJECTS =

# External object files for target cutlass_library_gemm_sm80_i16864spgemm_s8
cutlass_library_gemm_sm80_i16864spgemm_s8_EXTERNAL_OBJECTS = \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8_objs.dir/generated/gemm/80/i16864spgemm_s8/all_sm80_i16864spgemm_s8_gemm_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8_objs.dir/generated/gemm/80/i16864spgemm_s8/cutlass_tensorop_i16864spgemm_s8_128x64_128x3_tn_align16.cu.o"

tools/library/libcutlass_gemm_sm80_i16864spgemm_s8.so: tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8_objs.dir/generated/gemm/80/i16864spgemm_s8/all_sm80_i16864spgemm_s8_gemm_operations.cu.o
tools/library/libcutlass_gemm_sm80_i16864spgemm_s8.so: tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8_objs.dir/generated/gemm/80/i16864spgemm_s8/cutlass_tensorop_i16864spgemm_s8_128x64_128x3_tn_align16.cu.o
tools/library/libcutlass_gemm_sm80_i16864spgemm_s8.so: tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/build.make
tools/library/libcutlass_gemm_sm80_i16864spgemm_s8.so: /usr/local/cuda-11.6/lib64/stubs/libcuda.so
tools/library/libcutlass_gemm_sm80_i16864spgemm_s8.so: tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CUDA shared library libcutlass_gemm_sm80_i16864spgemm_s8.so"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/build: tools/library/libcutlass_gemm_sm80_i16864spgemm_s8.so
.PHONY : tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/build

tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/cmake_clean.cmake
.PHONY : tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/clean

tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/tools/library /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/library/CMakeFiles/cutlass_library_gemm_sm80_i16864spgemm_s8.dir/depend

