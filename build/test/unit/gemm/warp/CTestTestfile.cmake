# CMake generated Testfile for 
# Source directory: /home/m.gpuprog/cutlass_project/CUTLASS/test/unit/gemm/warp
# Build directory: /home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/warp
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[ctest_unit_gemm_warp]=] "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/warp/cutlass_test_unit_gemm_warp" "--gtest_output=xml:test_unit_gemm_warp.gtest.xml")
set_tests_properties([=[ctest_unit_gemm_warp]=] PROPERTIES  DISABLED "OFF" WORKING_DIRECTORY "./bin" _BACKTRACE_TRIPLES "/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/warp/ctest/ctest_unit_gemm_warp/CTestTestfile.ctest_unit_gemm_warp.cmake;24;add_test;/home/m.gpuprog/cutlass_project/CUTLASS/build/test/unit/gemm/warp/ctest/ctest_unit_gemm_warp/CTestTestfile.ctest_unit_gemm_warp.cmake;0;;/home/m.gpuprog/cutlass_project/CUTLASS/CMakeLists.txt;831;include;/home/m.gpuprog/cutlass_project/CUTLASS/test/unit/CMakeLists.txt;111;cutlass_add_executable_tests;/home/m.gpuprog/cutlass_project/CUTLASS/test/unit/gemm/warp/CMakeLists.txt;29;cutlass_test_unit_add_executable;/home/m.gpuprog/cutlass_project/CUTLASS/test/unit/gemm/warp/CMakeLists.txt;0;")
