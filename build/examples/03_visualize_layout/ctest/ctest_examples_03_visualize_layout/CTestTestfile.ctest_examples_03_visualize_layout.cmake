# Generated file

set(TEST_SETS_SUPPORTED default)

#? if (DEFINED ENV{CUTLASS_TEST_SET} AND NOT ENV{CUTLASS_TEST_SET} IN_LIST TEST_SETS_SUPPORTED)
#?   message(STATUS "Skipping tests for $<TARGET_FILE:03_visualize_layout> as $ENV{CUTLASS_TEST_SET} is not in the set of ${TEST_SETS_SUPPORTED}.")
#?   return()
#? endif()

set(TEST_EXE_PATH $<TARGET_FILE:03_visualize_layout>)
set(TEST_EXE_WORKING_DIRECTORY ./bin)
set(CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT ON)

if (DEFINED ENV{CUTLASS_TEST_EXECUTION_ENVIRONMENT})
  set(_CUTLASS_TEST_EXECUTION_ENVIRONMENT $ENV{CUTLASS_TEST_EXECUTION_ENVIRONMENT})
else()
  set(_CUTLASS_TEST_EXECUTION_ENVIRONMENT )
endif()

if (CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT)
  # The longform/extended format allows generator expressions to be
  # expanded property and is useful in contexts where the files need
  # to be immediately included into being-processed cmake code.
  add_test(NAME ctest_examples_03_visualize_layout COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" RowMajor;--extent=16,16)
else()
  add_test(ctest_examples_03_visualize_layout ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" RowMajor;--extent=16,16)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_examples_03_visualize_layout PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_examples_03_visualize_layout PROPERTIES DISABLED OFF)


