# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# compile CUDA with /usr/local/cuda-11.6/bin/nvcc
CUDA_DEFINES = -Dcutlass_library_conv3d_sm80_s16816dgrad3d_analytic_f16_EXPORTS

CUDA_INCLUDES = -I/home/m.gpuprog/cutlass_project/CUTLASS/include -I/home/m.gpuprog/cutlass_project/CUTLASS/build/include -I/include -I/examples -I/home/m.gpuprog/cutlass_project/CUTLASS/tools/library/include -I/home/m.gpuprog/cutlass_project/CUTLASS/tools/util/include -isystem=/usr/local/cuda-11.6/include

CUDA_FLAGS = -O3 -DNDEBUG --generate-code=arch=compute_80,code=[sm_80] --generate-code=arch=compute_80,code=[compute_80] -Xcompiler=-fPIC -DCUTLASS_ENABLE_TENSOR_CORE_MMA=1 --expt-relaxed-constexpr -DCUTLASS_TEST_LEVEL=0 -DCUTLASS_TEST_ENABLE_CACHED_RESULTS=1 -DCUTLASS_CONV_UNIT_TEST_RIGOROUS_SIZE_ENABLED=1 -DCUTLASS_DEBUG_TRACE_LEVEL=0 -Xcompiler=-Wconversion -Xcompiler=-fno-strict-aliasing -std=c++17

