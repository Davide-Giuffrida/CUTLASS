# Install script for directory: /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/cute/hopper

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_stsm" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_stsm")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_stsm"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/bin" TYPE EXECUTABLE FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/cutlass_test_unit_cute_hopper_stsm")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_stsm" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_stsm")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_stsm"
         OLD_RPATH "/usr/local/cuda-11.6/lib64/stubs:/usr/local/cuda-11.6/lib64:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_stsm")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/ctest/ctest_unit_cute_hopper_stsm" TYPE FILE RENAME "CTestTestfile.ctest_unit_cute_hopper_stsm.cmake" FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/ctest/ctest_unit_cute_hopper_stsm/CTestTestfile.ctest_unit_cute_hopper_stsm.install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_load" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_load")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_load"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/bin" TYPE EXECUTABLE FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/cutlass_test_unit_cute_hopper_tma_load")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_load" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_load")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_load"
         OLD_RPATH "/usr/local/cuda-11.6/lib64/stubs:/usr/local/cuda-11.6/lib64:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_load")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/ctest/ctest_unit_cute_hopper_tma_load" TYPE FILE RENAME "CTestTestfile.ctest_unit_cute_hopper_tma_load.cmake" FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/ctest/ctest_unit_cute_hopper_tma_load/CTestTestfile.ctest_unit_cute_hopper_tma_load.install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_store" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_store")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_store"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/bin" TYPE EXECUTABLE FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/cutlass_test_unit_cute_hopper_tma_store")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_store" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_store")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_store"
         OLD_RPATH "/usr/local/cuda-11.6/lib64/stubs:/usr/local/cuda-11.6/lib64:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_tma_store")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/ctest/ctest_unit_cute_hopper_tma_store" TYPE FILE RENAME "CTestTestfile.ctest_unit_cute_hopper_tma_store.cmake" FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/ctest/ctest_unit_cute_hopper_tma_store/CTestTestfile.ctest_unit_cute_hopper_tma_store.install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_load" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_load")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_load"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/bin" TYPE EXECUTABLE FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/cutlass_test_unit_cute_hopper_bulk_load")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_load" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_load")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_load"
         OLD_RPATH "/usr/local/cuda-11.6/lib64/stubs:/usr/local/cuda-11.6/lib64:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_load")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/ctest/ctest_unit_cute_hopper_bulk_load" TYPE FILE RENAME "CTestTestfile.ctest_unit_cute_hopper_bulk_load.cmake" FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/ctest/ctest_unit_cute_hopper_bulk_load/CTestTestfile.ctest_unit_cute_hopper_bulk_load.install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_store" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_store")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_store"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/bin" TYPE EXECUTABLE FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/cutlass_test_unit_cute_hopper_bulk_store")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_store" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_store")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_store"
         OLD_RPATH "/usr/local/cuda-11.6/lib64/stubs:/usr/local/cuda-11.6/lib64:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/test/cutlass/bin/cutlass_test_unit_cute_hopper_bulk_store")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/test/cutlass/ctest/ctest_unit_cute_hopper_bulk_store" TYPE FILE RENAME "CTestTestfile.ctest_unit_cute_hopper_bulk_store.cmake" FILES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/cute/hopper/ctest/ctest_unit_cute_hopper_bulk_store/CTestTestfile.ctest_unit_cute_hopper_bulk_store.install.cmake")
endif()

