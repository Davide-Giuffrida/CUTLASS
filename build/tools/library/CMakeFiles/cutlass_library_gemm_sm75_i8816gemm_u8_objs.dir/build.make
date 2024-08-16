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
include tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/progress.make

# Include the compile flags for this target's objects.
include tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/flags.make

tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.o: tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/flags.make
tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.o: tools/library/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu
tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.o: tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.o -MF CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu -o CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.o

tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.o: tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/flags.make
tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.o: tools/library/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu
tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.o: tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CUDA object tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.o -MF CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu -o CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.o

tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

cutlass_library_gemm_sm75_i8816gemm_u8_objs: tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu.o
cutlass_library_gemm_sm75_i8816gemm_u8_objs: tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu.o
cutlass_library_gemm_sm75_i8816gemm_u8_objs: tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/build.make
.PHONY : cutlass_library_gemm_sm75_i8816gemm_u8_objs

# Rule to build all files generated by this target.
tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/build: cutlass_library_gemm_sm75_i8816gemm_u8_objs
.PHONY : tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/build

tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/cmake_clean.cmake
.PHONY : tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/clean

tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/tools/library /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/library/CMakeFiles/cutlass_library_gemm_sm75_i8816gemm_u8_objs.dir/depend
