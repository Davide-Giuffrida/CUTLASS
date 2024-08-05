# Install script for directory: /home/m.gpuprog/cutlass_project/CUTLASS/examples/28_ampere_3xtf32_fast_accurate_tensorop_fprop

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/28_ampere_3xtf32_fast_accurate_tensorop_fprop" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/28_ampere_3xtf32_fast_accurate_tensorop_fprop")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/28_ampere_3xtf32_fast_accurate_tensorop_fprop"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/examples/28_ampere_3xtf32_fast_accurate_tensorop_fprop/28_ampere_3xtf32_fast_accurate_tensorop_fprop")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/28_ampere_3xtf32_fast_accurate_tensorop_fprop" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/28_ampere_3xtf32_fast_accurate_tensorop_fprop")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/28_ampere_3xtf32_fast_accurate_tensorop_fprop")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/ctest/ctest_examples_28_ampere_3xtf32_fast_accurate_tensorop_fprop" TYPE FILE RENAME "CTestTestfile.ctest_examples_28_ampere_3xtf32_fast_accurate_tensorop_fprop.cmake" FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/examples/28_ampere_3xtf32_fast_accurate_tensorop_fprop/ctest/ctest_examples_28_ampere_3xtf32_fast_accurate_tensorop_fprop/CTestTestfile.ctest_examples_28_ampere_3xtf32_fast_accurate_tensorop_fprop.install.cmake")
endif()

