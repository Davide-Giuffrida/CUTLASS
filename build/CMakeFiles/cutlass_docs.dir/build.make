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

# Utility rule file for cutlass_docs.

# Include any custom commands dependencies for this target.
include CMakeFiles/cutlass_docs.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cutlass_docs.dir/progress.make

CMakeFiles/cutlass_docs:
	cd /home/m.gpuprog/cutlass_project/CUTLASS && /home/m.gpuprog/cmake_tmp/cmake-3.20.0/bin/cmake -E env DOT_PATH=/usr/bin/dot HAVE_DOT=YES /usr/bin/doxygen /home/m.gpuprog/cutlass_project/CUTLASS/Doxyfile

cutlass_docs: CMakeFiles/cutlass_docs
cutlass_docs: CMakeFiles/cutlass_docs.dir/build.make
.PHONY : cutlass_docs

# Rule to build all files generated by this target.
CMakeFiles/cutlass_docs.dir/build: cutlass_docs
.PHONY : CMakeFiles/cutlass_docs.dir/build

CMakeFiles/cutlass_docs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cutlass_docs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cutlass_docs.dir/clean

CMakeFiles/cutlass_docs.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles/cutlass_docs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cutlass_docs.dir/depend
