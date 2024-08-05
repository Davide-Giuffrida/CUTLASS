# Generated file

set(TEST_SETS_SUPPORTED default)

#? if (DEFINED ENV{CUTLASS_TEST_SET} AND NOT ENV{CUTLASS_TEST_SET} IN_LIST TEST_SETS_SUPPORTED)
#?   message(STATUS "Skipping tests for cutlass_profiler as $ENV{CUTLASS_TEST_SET} is not in the set of ${TEST_SETS_SUPPORTED}.")
#?   return()
#? endif()

set(TEST_EXE_PATH cutlass_profiler)
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
  add_test(NAME ctest_profiler_gemm COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Gemm;--providers=cutlass;--verification-providers=cublas,device;--junit-output=test_cutlass_profiler_gemm;--print-kernel-before-running=true)
else()
  add_test(ctest_profiler_gemm ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Gemm;--providers=cutlass;--verification-providers=cublas,device;--junit-output=test_cutlass_profiler_gemm;--print-kernel-before-running=true)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_profiler_gemm PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_profiler_gemm PROPERTIES DISABLED OFF)

if (CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT)
  # The longform/extended format allows generator expressions to be
  # expanded property and is useful in contexts where the files need
  # to be immediately included into being-processed cmake code.
  add_test(NAME ctest_profiler_conv2d COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Conv2d;--providers=cutlass;--verification-providers=cudnn,device;--junit-output=test_cutlass_profiler_conv2d;--print-kernel-before-running=true)
else()
  add_test(ctest_profiler_conv2d ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Conv2d;--providers=cutlass;--verification-providers=cudnn,device;--junit-output=test_cutlass_profiler_conv2d;--print-kernel-before-running=true)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_profiler_conv2d PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_profiler_conv2d PROPERTIES DISABLED OFF)

if (CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT)
  # The longform/extended format allows generator expressions to be
  # expanded property and is useful in contexts where the files need
  # to be immediately included into being-processed cmake code.
  add_test(NAME ctest_profiler_conv3d COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Conv3d;--providers=cutlass;--verification-providers=cudnn,device,host;--junit-output=test_cutlass_profiler_conv3d;--print-kernel-before-running=true)
else()
  add_test(ctest_profiler_conv3d ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Conv3d;--providers=cutlass;--verification-providers=cudnn,device,host;--junit-output=test_cutlass_profiler_conv3d;--print-kernel-before-running=true)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_profiler_conv3d PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_profiler_conv3d PROPERTIES DISABLED OFF)

if (CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT)
  # The longform/extended format allows generator expressions to be
  # expanded property and is useful in contexts where the files need
  # to be immediately included into being-processed cmake code.
  add_test(NAME ctest_profiler_spgemm COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=SparseGemm;--providers=cutlass;--verification-providers=cublas,device,host;--junit-output=test_cutlass_profiler_spgemm;--print-kernel-before-running=true)
else()
  add_test(ctest_profiler_spgemm ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=SparseGemm;--providers=cutlass;--verification-providers=cublas,device,host;--junit-output=test_cutlass_profiler_spgemm;--print-kernel-before-running=true)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_profiler_spgemm PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_profiler_spgemm PROPERTIES DISABLED OFF)

if (CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT)
  # The longform/extended format allows generator expressions to be
  # expanded property and is useful in contexts where the files need
  # to be immediately included into being-processed cmake code.
  add_test(NAME ctest_profiler_rank_k COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=RankK;--providers=cutlass;--verification-providers=cublas;--junit-output=test_cutlass_profiler_rank_k;--print-kernel-before-running=true)
else()
  add_test(ctest_profiler_rank_k ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=RankK;--providers=cutlass;--verification-providers=cublas;--junit-output=test_cutlass_profiler_rank_k;--print-kernel-before-running=true)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_profiler_rank_k PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_profiler_rank_k PROPERTIES DISABLED OFF)

if (CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT)
  # The longform/extended format allows generator expressions to be
  # expanded property and is useful in contexts where the files need
  # to be immediately included into being-processed cmake code.
  add_test(NAME ctest_profiler_rank_2k COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Rank2K;--providers=cutlass;--verification-providers=cublas;--junit-output=test_cutlass_profiler_rank_2k;--print-kernel-before-running=true)
else()
  add_test(ctest_profiler_rank_2k ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Rank2K;--providers=cutlass;--verification-providers=cublas;--junit-output=test_cutlass_profiler_rank_2k;--print-kernel-before-running=true)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_profiler_rank_2k PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_profiler_rank_2k PROPERTIES DISABLED OFF)

if (CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT)
  # The longform/extended format allows generator expressions to be
  # expanded property and is useful in contexts where the files need
  # to be immediately included into being-processed cmake code.
  add_test(NAME ctest_profiler_trmm COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Trmm;--providers=cutlass;--verification-providers=device,host;--junit-output=test_cutlass_profiler_trmm;--print-kernel-before-running=true)
else()
  add_test(ctest_profiler_trmm ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Trmm;--providers=cutlass;--verification-providers=device,host;--junit-output=test_cutlass_profiler_trmm;--print-kernel-before-running=true)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_profiler_trmm PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_profiler_trmm PROPERTIES DISABLED OFF)

if (CUTLASS_USE_EXTENDED_ADD_TEST_FORMAT)
  # The longform/extended format allows generator expressions to be
  # expanded property and is useful in contexts where the files need
  # to be immediately included into being-processed cmake code.
  add_test(NAME ctest_profiler_symm COMMAND ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Symm;--providers=cutlass;--verification-providers=cublas,host;--junit-output=test_cutlass_profiler_symm;--print-kernel-before-running=true)
else()
  add_test(ctest_profiler_symm ${_CUTLASS_TEST_EXECUTION_ENVIRONMENT} "${TEST_EXE_PATH}" --operation=Symm;--providers=cutlass;--verification-providers=cublas,host;--junit-output=test_cutlass_profiler_symm;--print-kernel-before-running=true)
endif()

if (TEST_EXE_WORKING_DIRECTORY)
  set_tests_properties(ctest_profiler_symm PROPERTIES WORKING_DIRECTORY "${TEST_EXE_WORKING_DIRECTORY}")
endif()

set_tests_properties(ctest_profiler_symm PROPERTIES DISABLED OFF)


