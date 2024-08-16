# CMake generated Testfile for 
# Source directory: /home/m.gpuprog/cutlass_project/CUTLASS/examples
# Build directory: /home/m.gpuprog/cutlass_project/CUTLASS/build/examples
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
subdirs("00_basic_gemm")
subdirs("01_cutlass_utilities")
subdirs("02_dump_reg_shmem")
subdirs("03_visualize_layout")
subdirs("04_tile_iterator")
subdirs("05_batched_gemm")
subdirs("06_splitK_gemm")
subdirs("07_volta_tensorop_gemm")
subdirs("08_turing_tensorop_gemm")
subdirs("09_turing_tensorop_conv2dfprop")
subdirs("10_planar_complex")
subdirs("11_planar_complex_array")
subdirs("12_gemm_bias_relu")
subdirs("13_two_tensor_op_fusion")
subdirs("14_ampere_tf32_tensorop_gemm")
subdirs("15_ampere_sparse_tensorop_gemm")
subdirs("16_ampere_tensorop_conv2dfprop")
subdirs("17_fprop_per_channel_bias")
subdirs("18_ampere_fp64_tensorop_affine2_gemm")
subdirs("19_tensorop_canonical")
subdirs("20_simt_canonical")
subdirs("21_quaternion_gemm")
subdirs("22_quaternion_conv")
subdirs("23_ampere_gemm_operand_reduction_fusion")
subdirs("24_gemm_grouped")
subdirs("25_ampere_fprop_mainloop_fusion")
subdirs("26_ampere_wgrad_mainloop_fusion")
subdirs("27_ampere_3xtf32_fast_accurate_tensorop_gemm")
subdirs("28_ampere_3xtf32_fast_accurate_tensorop_fprop")
subdirs("29_ampere_3xtf32_fast_accurate_tensorop_complex_gemm")
subdirs("30_wgrad_split_k")
subdirs("31_basic_syrk")
subdirs("32_basic_trmm")
subdirs("33_ampere_3xtf32_tensorop_symm")
subdirs("34_transposed_conv2d")
subdirs("35_gemm_softmax")
subdirs("36_gather_scatter_fusion")
subdirs("37_gemm_layernorm_gemm_fusion")
subdirs("38_syr2k_grouped")
subdirs("cute")
subdirs("39_gemm_permute")
subdirs("41_fused_multi_head_attention")
subdirs("42_ampere_tensorop_group_conv")
subdirs("43_ell_block_sparse_gemm")
subdirs("45_dual_gemm")
subdirs("46_depthwise_simt_conv2dfprop")
subdirs("47_ampere_gemm_universal_streamk")
subdirs("48_hopper_warp_specialized_gemm")
subdirs("49_hopper_gemm_with_collective_builder")
subdirs("50_hopper_gemm_with_epilogue_swizzle")
subdirs("51_hopper_gett")
subdirs("52_hopper_gather_scatter_fusion")
subdirs("53_hopper_gemm_permute")
subdirs("54_hopper_fp8_warp_specialized_gemm")
subdirs("55_hopper_mixed_dtype_gemm")