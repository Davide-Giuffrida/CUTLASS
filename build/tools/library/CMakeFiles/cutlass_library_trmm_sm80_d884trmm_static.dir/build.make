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
include tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/progress.make

# Include the compile flags for this target's objects.
include tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/flags.make

# Object files for target cutlass_library_trmm_sm80_d884trmm_static
cutlass_library_trmm_sm80_d884trmm_static_OBJECTS =

# External object files for target cutlass_library_trmm_sm80_d884trmm_static
cutlass_library_trmm_sm80_d884trmm_static_EXTERNAL_OBJECTS = \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/all_sm80_d884trmm_trmm_operations.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_l_nu_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_l_un_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_u_nu_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_u_un_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_l_nu_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_l_un_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_u_nu_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_u_un_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_l_nu_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_l_un_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_u_nu_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_u_un_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_l_nu_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_l_un_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_u_nu_align1.cu.o" \
"/home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_u_un_align1.cu.o"

tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/all_sm80_d884trmm_trmm_operations.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_l_nu_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_l_un_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_u_nu_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_u_un_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_l_nu_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_l_un_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_u_nu_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_u_un_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_l_nu_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_l_un_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_u_nu_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_u_un_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_l_nu_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_l_un_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_u_nu_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_objs.dir/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_u_un_align1.cu.o
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/build.make
tools/library/libcutlass_trmm_sm80_d884trmm.a: tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/m.gpuprog/cutlass_project/CUTLASS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CUDA static library libcutlass_trmm_sm80_d884trmm.a"
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/cmake_clean_target.cmake
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/build: tools/library/libcutlass_trmm_sm80_d884trmm.a
.PHONY : tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/build

tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/clean:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library && $(CMAKE_COMMAND) -P CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/cmake_clean.cmake
.PHONY : tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/clean

tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/depend:
	cd /home/m.gpuprog/cutlass_project/CUTLASS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m.gpuprog/cutlass_project/CUTLASS /home/m.gpuprog/cutlass_project/CUTLASS/tools/library /home/m.gpuprog/cutlass_project/CUTLASS/build /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/library/CMakeFiles/cutlass_library_trmm_sm80_d884trmm_static.dir/depend

