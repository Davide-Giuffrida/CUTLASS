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

# Utility rule file for test_profiler_rank_k.

# Include any custom commands dependencies for this target.
include tools/profiler/CMakeFiles/test_profiler_rank_k.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/profiler/CMakeFiles/test_profiler_rank_k.dir/progress.make

tools/profiler/CMakeFiles/test_profiler_rank_k: tools/profiler/cutlass_profiler
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/profiler && ./cutlass_profiler --operation=RankK --providers=cutlass --verification-providers=cublas --junit-output=test_cutlass_profiler_rank_k --print-kernel-before-running=true

test_profiler_rank_k: tools/profiler/CMakeFiles/test_profiler_rank_k
test_profiler_rank_k: tools/profiler/CMakeFiles/test_profiler_rank_k.dir/build.make
.PHONY : test_profiler_rank_k

# Rule to build all files generated by this target.
tools/profiler/CMakeFiles/test_profiler_rank_k.dir/build: test_profiler_rank_k
.PHONY : tools/profiler/CMakeFiles/test_profiler_rank_k.dir/build

tools/profiler/CMakeFiles/test_profiler_rank_k.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/profiler && $(CMAKE_COMMAND) -P CMakeFiles/test_profiler_rank_k.dir/cmake_clean.cmake
.PHONY : tools/profiler/CMakeFiles/test_profiler_rank_k.dir/clean

tools/profiler/CMakeFiles/test_profiler_rank_k.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/tools/profiler /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/profiler /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/profiler/CMakeFiles/test_profiler_rank_k.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/profiler/CMakeFiles/test_profiler_rank_k.dir/depend

