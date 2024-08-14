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
include test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.make

# Include the progress variables for this target.
include test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/progress.make

# Include the compile flags for this target's objects.
include test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.o: ../test/unit/epilogue/threadblock/predicated_tile_iterator.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/predicated_tile_iterator.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.o: ../test/unit/epilogue/threadblock/output_tile_threadmap.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/output_tile_threadmap.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.o: ../test/unit/epilogue/threadblock/epilogue_simt.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/epilogue_simt.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.o: ../test/unit/epilogue/threadblock/epilogue_simt_sm60.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/epilogue_simt_sm60.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.o: ../test/unit/epilogue/threadblock/epilogue_simt_sm61.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/epilogue_simt_sm61.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.o: ../test/unit/epilogue/threadblock/epilogue_tensor_op.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/epilogue_tensor_op.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.o: ../test/unit/epilogue/threadblock/epilogue_volta_tensor_op.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/epilogue_volta_tensor_op.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.o: ../test/unit/epilogue/threadblock/epilogue_wmma_tensor_op_sm70.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/epilogue_wmma_tensor_op_sm70.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.o: ../test/unit/epilogue/threadblock/epilogue_planar_complex.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/epilogue_planar_complex.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/flags.make
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.o: ../test/unit/epilogue/threadblock/epilogue_with_reduction_tensor_op.cu
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.o: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CUDA object test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.o -MF CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock/epilogue_with_reduction_tensor_op.cu -o CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.o

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cutlass_test_unit_epilogue_threadblock
cutlass_test_unit_epilogue_threadblock_OBJECTS = \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.o" \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.o" \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.o" \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.o" \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.o" \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.o" \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.o" \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.o" \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.o" \
"CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.o"

# External object files for target cutlass_test_unit_epilogue_threadblock
cutlass_test_unit_epilogue_threadblock_EXTERNAL_OBJECTS = \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/CMakeFiles/cutlass_test_unit_infra.dir/common/filter_architecture.cpp.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/CMakeFiles/cutlass_test_unit_infra_lib.dir/test_unit.cpp.o"

test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/predicated_tile_iterator.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/output_tile_threadmap.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm60.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_simt_sm61.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_tensor_op.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_volta_tensor_op.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_wmma_tensor_op_sm70.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_planar_complex.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/epilogue_with_reduction_tensor_op.cu.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/CMakeFiles/cutlass_test_unit_infra.dir/common/filter_architecture.cpp.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/CMakeFiles/cutlass_test_unit_infra_lib.dir/test_unit.cpp.o
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/build.make
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: lib/libgtest.a
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: /usr/local/cuda-11.6/lib64/libcudart.so
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: /usr/local/cuda-11.6/lib64/stubs/libcuda.so
test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock: test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable cutlass_test_unit_epilogue_threadblock"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/build: test/unit/epilogue/threadblock/cutlass_test_unit_epilogue_threadblock
.PHONY : test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/build

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/cmake_clean.cmake
.PHONY : test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/clean

test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/epilogue/threadblock /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/unit/epilogue/threadblock/CMakeFiles/cutlass_test_unit_epilogue_threadblock.dir/depend

