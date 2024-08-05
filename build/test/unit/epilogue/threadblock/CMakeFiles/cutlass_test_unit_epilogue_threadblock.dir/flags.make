# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# compile CUDA with /usr/local/cuda-11.6/bin/nvcc
# compile CXX with /usr/bin/c++
CUDA_DEFINES = -DCUTLASS_TARGET_NAME=\"cutlass_test_unit_epilogue_threadblock\"

CUDA_INCLUDES = -I/home/m.gpuprog/cutlass_project/CUTLASS/include -I/home/m.gpuprog/cutlass_project/CUTLASS/test/unit/common -I/home/m.gpuprog/cutlass_project/CUTLASS/build/include -I/include -I/examples -I/home/m.gpuprog/cutlass_project/CUTLASS/tools/util/include -isystem=/usr/local/cuda-11.6/include -isystem=/home/m.gpuprog/cutlass_project/CUTLASS/build/_deps/googletest-src/googletest/include -isystem=/home/m.gpuprog/cutlass_project/CUTLASS/build/_deps/googletest-src/googletest

CUDA_FLAGS = -O3 -DNDEBUG --generate-code=arch=compute_80,code=[sm_80] --generate-code=arch=compute_80,code=[compute_80] -Xcompiler=-fPIE -DCUTLASS_ENABLE_TENSOR_CORE_MMA=1 --expt-relaxed-constexpr -DCUTLASS_TEST_LEVEL=0 -DCUTLASS_TEST_ENABLE_CACHED_RESULTS=1 -DCUTLASS_CONV_UNIT_TEST_RIGOROUS_SIZE_ENABLED=1 -DCUTLASS_DEBUG_TRACE_LEVEL=0 -Xcompiler=-Wconversion -Xcompiler=-fno-strict-aliasing -std=c++17

CXX_DEFINES = -DCUTLASS_TARGET_NAME=\"cutlass_test_unit_epilogue_threadblock\"

CXX_INCLUDES = -I/home/m.gpuprog/cutlass_project/CUTLASS/include -I/home/m.gpuprog/cutlass_project/CUTLASS/test/unit/common -I/home/m.gpuprog/cutlass_project/CUTLASS/build/include -I/include -I/examples -I/home/m.gpuprog/cutlass_project/CUTLASS/tools/util/include -isystem /usr/local/cuda-11.6/include -isystem /home/m.gpuprog/cutlass_project/CUTLASS/build/_deps/googletest-src/googletest/include -isystem /home/m.gpuprog/cutlass_project/CUTLASS/build/_deps/googletest-src/googletest

CXX_FLAGS = -O3 -DNDEBUG -fPIE -std=c++17

