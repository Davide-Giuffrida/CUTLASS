# CMake generated Testfile for 
# Source directory: /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/reduction/kernel
# Build directory: /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/reduction/kernel
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[ctest_unit_reduction_kernel]=] "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/reduction/kernel/cutlass_test_unit_reduction_kernel" "--gtest_output=xml:test_unit_reduction_kernel.gtest.xml")
set_tests_properties([=[ctest_unit_reduction_kernel]=] PROPERTIES  DISABLED "OFF" WORKING_DIRECTORY "./bin" _BACKTRACE_TRIPLES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/reduction/kernel/ctest/ctest_unit_reduction_kernel/CTestTestfile.ctest_unit_reduction_kernel.cmake;24;add_test;/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/reduction/kernel/ctest/ctest_unit_reduction_kernel/CTestTestfile.ctest_unit_reduction_kernel.cmake;0;;/home/m.gpuprog/cutlass_project/CUTLASS/CMakeLists.txt;831;include;/home/m.gpuprog/cutlass_project/CUTLASS/test/unit/CMakeLists.txt;111;cutlass_add_executable_tests;/home/m.gpuprog/cutlass_project/CUTLASS/test/unit/reduction/kernel/CMakeLists.txt;29;cutlass_test_unit_add_executable;/home/m.gpuprog/cutlass_project/CUTLASS/test/unit/reduction/kernel/CMakeLists.txt;0;")
