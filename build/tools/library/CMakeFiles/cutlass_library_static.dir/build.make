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
include tools/library/CMakeFiles/cutlass_library_static.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/library/CMakeFiles/cutlass_library_static.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/library/CMakeFiles/cutlass_library_static.dir/progress.make

# Include the compile flags for this target's objects.
include tools/library/CMakeFiles/cutlass_library_static.dir/flags.make

# Object files for target cutlass_library_static
cutlass_library_static_OBJECTS =

# External object files for target cutlass_library_static
cutlass_library_static_EXTERNAL_OBJECTS = \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/handle.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/manifest.cpp.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/operation_table.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/singleton.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/util.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_int4.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_int8_canonical.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_int8_interleaved_32.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_int8_interleaved_64.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_e4m3a_e4m3out.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_e5m2a_e4m3out.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_e4m3a_e5m2out.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_e5m2a_e5m2out.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp8in_fp16out.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp8in_bf16out.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp8in_fp32out.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp32out.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp_other.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp_mixed_input.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/initialize_reference_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reduction/reduction_device.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reduction/init_reduction_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/conv2d.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/conv3d.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/generated/initialize_all.cpp.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/generated/gemm/all_gemm_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/generated/conv2d/all_conv2d_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/generated/conv3d/all_conv3d_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/generated/rank_k/all_rank_k_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/generated/rank_2k/all_rank_2k_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/generated/trmm/all_trmm_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_objs.dir/generated/symm/all_symm_operations.cu.o"

tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/handle.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/manifest.cpp.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/operation_table.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/singleton.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/util.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_int4.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_int8_canonical.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_int8_interleaved_32.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_int8_interleaved_64.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_e4m3a_e4m3out.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_e5m2a_e4m3out.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_e4m3a_e5m2out.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_e5m2a_e5m2out.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp8in_fp16out.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp8in_bf16out.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp8in_fp32out.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp32out.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp_other.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/gemm_fp_mixed_input.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/initialize_reference_operations.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reduction/reduction_device.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reduction/init_reduction_operations.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/conv2d.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/src/reference/conv3d.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/generated/initialize_all.cpp.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/generated/gemm/all_gemm_operations.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/generated/conv2d/all_conv2d_operations.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/generated/conv3d/all_conv3d_operations.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/generated/rank_k/all_rank_k_operations.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/generated/rank_2k/all_rank_2k_operations.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/generated/trmm/all_trmm_operations.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_objs.dir/generated/symm/all_symm_operations.cu.o
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_static.dir/build.make
tools/library/libcutlass.a: tools/library/CMakeFiles/cutlass_library_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libcutlass.a"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_library_static.dir/cmake_clean_target.cmake
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cutlass_library_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/library/CMakeFiles/cutlass_library_static.dir/build: tools/library/libcutlass.a
.PHONY : tools/library/CMakeFiles/cutlass_library_static.dir/build

tools/library/CMakeFiles/cutlass_library_static.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_library_static.dir/cmake_clean.cmake
.PHONY : tools/library/CMakeFiles/cutlass_library_static.dir/clean

tools/library/CMakeFiles/cutlass_library_static.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/tools/library /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/library/CMakeFiles/cutlass_library_static.dir/depend

