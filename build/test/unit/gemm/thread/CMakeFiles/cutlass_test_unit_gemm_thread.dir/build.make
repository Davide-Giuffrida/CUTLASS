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
include test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/compiler_depend.make

# Include the progress variables for this target.
include test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/progress.make

# Include the compile flags for this target's objects.
include test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/flags.make

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.o: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/flags.make
test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.o: ../test/unit/gemm/thread/gemm_sm50.cu
test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.o: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/thread && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.o -MF CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/gemm/thread/gemm_sm50.cu -o CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.o

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.o: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/flags.make
test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.o: ../test/unit/gemm/thread/gemm_sm60.cu
test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.o: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CUDA object test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/thread && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.o -MF CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/gemm/thread/gemm_sm60.cu -o CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.o

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.o: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/flags.make
test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.o: ../test/unit/gemm/thread/gemm_sm61.cu
test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.o: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CUDA object test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.o"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/thread && /usr/local/cuda-11.6/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.o -MF CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.o.d -x cu -c /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/gemm/thread/gemm_sm61.cu -o CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.o

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cutlass_test_unit_gemm_thread
cutlass_test_unit_gemm_thread_OBJECTS = \
"CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.o" \
"CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.o" \
"CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.o"

# External object files for target cutlass_test_unit_gemm_thread
cutlass_test_unit_gemm_thread_EXTERNAL_OBJECTS = \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/CMakeFiles/cutlass_test_unit_infra.dir/common/filter_architecture.cpp.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/CMakeFiles/cutlass_test_unit_infra_lib.dir/test_unit.cpp.o"

test/unit/gemm/thread/cutlass_test_unit_gemm_thread: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm50.cu.o
test/unit/gemm/thread/cutlass_test_unit_gemm_thread: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm60.cu.o
test/unit/gemm/thread/cutlass_test_unit_gemm_thread: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/gemm_sm61.cu.o
test/unit/gemm/thread/cutlass_test_unit_gemm_thread: test/unit/CMakeFiles/cutlass_test_unit_infra.dir/common/filter_architecture.cpp.o
test/unit/gemm/thread/cutlass_test_unit_gemm_thread: test/unit/CMakeFiles/cutlass_test_unit_infra_lib.dir/test_unit.cpp.o
test/unit/gemm/thread/cutlass_test_unit_gemm_thread: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/build.make
test/unit/gemm/thread/cutlass_test_unit_gemm_thread: lib/libgtest.a
test/unit/gemm/thread/cutlass_test_unit_gemm_thread: /usr/local/cuda-11.6/lib64/libcudart.so
test/unit/gemm/thread/cutlass_test_unit_gemm_thread: /usr/local/cuda-11.6/lib64/stubs/libcuda.so
test/unit/gemm/thread/cutlass_test_unit_gemm_thread: test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable cutlass_test_unit_gemm_thread"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/thread && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cutlass_test_unit_gemm_thread.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/build: test/unit/gemm/thread/cutlass_test_unit_gemm_thread
.PHONY : test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/build

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/thread && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_test_unit_gemm_thread.dir/cmake_clean.cmake
.PHONY : test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/clean

test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/gemm/thread /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/thread /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/unit/gemm/thread/CMakeFiles/cutlass_test_unit_gemm_thread.dir/depend

