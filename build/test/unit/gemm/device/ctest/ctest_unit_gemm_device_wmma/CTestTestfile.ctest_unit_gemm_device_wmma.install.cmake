# Generated file

set(TEST_SETS_SUPPORTED default)

#? if (DEFINED ENV{CUTLASS_TEST_SET} AND NOT ENV{CUTLASS_TEST_SET} IN_LIST TEST_SETS_SUPPORTED)
#?   message(STATUS "Skipping tests for cutlass_test_unit_gemm_device_wmma as $ENV{CUTLASS_TEST_SET} is not in the set of ${TEST_SETS_SUPPORTED}.")
#?   return()
#? endif()

set(TEST_EXE_PATH cutlass_test_unit_gemm_device_wmma)
set(TEST_EXE_WORKING_DIRECTORY ./bin)
set(CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT OFF)

if (DEFINED ENV{CUTLASS_TEST_EXECUTION_ENVIRONMENT})
  set(_CUTLASS_TEST_EXECUTION_ENVIRONMENT $ENV{CUTLASS_TEST_EXECUTION_ENVIRONMENT})
else()
  set(_CUTLASS_TEST_EXECUTION_ENVIRONMENT )
endif()

if (CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT)
  # The longform/extended format allows generator expressions to be
  # expanded property and is useful in contexts where the files need
  # to be immediately included into being-processed cmake code.
  add_test(NAME ctest_unit_gemm_device_wmma COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --gtest_output=xml:test_unit_gemm_device_wmma.gtest.xml)
else()
  add_test(ctest_unit_gemm_device_wmma ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --gtest_output=xml:test_unit_gemm_device_wmma.gtest.xml)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_unit_gemm_device_wmma PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_unit_gemm_device_wmma PROPERTIES DISABLED OFF)

