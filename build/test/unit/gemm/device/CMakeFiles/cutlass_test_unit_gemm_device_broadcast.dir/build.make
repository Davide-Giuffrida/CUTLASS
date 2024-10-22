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
include test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/compiler_depend.make

# Include the progress variables for this target.
include test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/progress.make

# Include the compile flags for this target's objects.
include test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/flags.make

test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.o: test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/flags.make
test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.o: ../test/unit/gemm/device/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu
test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.o: test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/device && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.o -MF CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/gemm/device/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu -o CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.o

test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cutlass_test_unit_gemm_device_broadcast
cutlass_test_unit_gemm_device_broadcast_OBJECTS = \
"CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.o"

# External object files for target cutlass_test_unit_gemm_device_broadcast
cutlass_test_unit_gemm_device_broadcast_EXTERNAL_OBJECTS = \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/CMakeFiles/cutlass_test_unit_infra.dir/common/filter_architecture.cpp.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/CMakeFiles/cutlass_test_unit_infra_lib.dir/test_unit.cpp.o"

test/unit/gemm/device/cutlass_test_unit_gemm_device_broadcast: test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/gemm_f16t_f16n_f16t_tensor_op_f16_broadcast_sm80.cu.o
test/unit/gemm/device/cutlass_test_unit_gemm_device_broadcast: test/unit/CMakeFiles/cutlass_test_unit_infra.dir/common/filter_architecture.cpp.o
test/unit/gemm/device/cutlass_test_unit_gemm_device_broadcast: test/unit/CMakeFiles/cutlass_test_unit_infra_lib.dir/test_unit.cpp.o
test/unit/gemm/device/cutlass_test_unit_gemm_device_broadcast: test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/build.make
test/unit/gemm/device/cutlass_test_unit_gemm_device_broadcast: lib/libgtest.a
test/unit/gemm/device/cutlass_test_unit_gemm_device_broadcast: /usr/local/cuda-11.6/lib64/libcudart.so
test/unit/gemm/device/cutlass_test_unit_gemm_device_broadcast: /usr/local/cuda-11.6/lib64/stubs/libcuda.so
test/unit/gemm/device/cutlass_test_unit_gemm_device_broadcast: test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cutlass_test_unit_gemm_device_broadcast"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/device && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/build: test/unit/gemm/device/cutlass_test_unit_gemm_device_broadcast
.PHONY : test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/build

test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/device && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/cmake_clean.cmake
.PHONY : test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/clean

test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/gemm/device /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/device /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/unit/gemm/device/CMakeFiles/cutlass_test_unit_gemm_device_broadcast.dir/depend

