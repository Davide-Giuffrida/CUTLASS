cutlass_target_sources(cutlass_library_objs PRIVATE
      

    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/initialize_all.cpp
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/all_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/all_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/all_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/all_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/all_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/all_trmm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/all_symm_operations.cu
)

cutlass_add_cutlass_library(
      SUFFIX gemm_sm50_cgemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/cgemm/all_sm50_cgemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/cgemm/cutlass_simt_cgemm_128x64_8x2_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/cgemm/cutlass_simt_cgemm_128x64_8x2_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/cgemm/cutlass_simt_cgemm_128x64_8x2_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/cgemm/cutlass_simt_cgemm_128x64_8x2_tt_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm50_dgemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/dgemm/all_sm50_dgemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/dgemm/cutlass_simt_dgemm_128x128_8x2_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/dgemm/cutlass_simt_dgemm_128x128_8x2_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/dgemm/cutlass_simt_dgemm_128x128_8x2_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/dgemm/cutlass_simt_dgemm_128x128_8x2_tt_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm50_sgemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/sgemm/all_sm50_sgemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/sgemm/cutlass_simt_sgemm_128x128_8x2_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/sgemm/cutlass_simt_sgemm_128x128_8x2_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/sgemm/cutlass_simt_sgemm_128x128_8x2_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/50/sgemm/cutlass_simt_sgemm_128x128_8x2_tt_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm60_hgemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/60/hgemm/all_sm60_hgemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/60/hgemm/cutlass_simt_hgemm_256x128_8x2_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/60/hgemm/cutlass_simt_hgemm_256x128_8x2_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/60/hgemm/cutlass_simt_hgemm_256x128_8x2_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/60/hgemm/cutlass_simt_hgemm_256x128_8x2_tt_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm61_igemm_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/igemm_s8/all_sm61_igemm_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/igemm_s8/cutlass_simt_igemm_s8_128x128_32x2_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/igemm_s8/cutlass_simt_igemm_s8_128x128_32x2_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/igemm_s8/cutlass_simt_igemm_s8_128x128_32x2_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/igemm_s8/cutlass_simt_igemm_s8_128x128_32x2_tt_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm61_s8_igemm_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/s8_igemm_s8/all_sm61_s8_igemm_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/s8_igemm_s8/cutlass_simt_s8_igemm_s8_128x128_32x2_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/s8_igemm_s8/cutlass_simt_s8_igemm_s8_128x128_32x2_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/s8_igemm_s8/cutlass_simt_s8_igemm_s8_128x128_32x2_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/61/s8_igemm_s8/cutlass_simt_s8_igemm_s8_128x128_32x2_tt_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_f16_s1688gemm_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_f16/all_sm75_f16_s1688gemm_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_f16/cutlass_tensorop_f16_s1688gemm_f16_256x128_32x2_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_f16/cutlass_tensorop_f16_s1688gemm_f16_256x128_32x2_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_f16/cutlass_tensorop_f16_s1688gemm_f16_256x128_32x2_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_f16/cutlass_tensorop_f16_s1688gemm_f16_256x128_32x2_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_f16_s1688gemm_planar_complex_array_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/all_sm75_f16_s1688gemm_planar_complex_array_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_array_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_array_f16_64x128_32x2_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_f16_s1688gemm_planar_complex_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/all_sm75_f16_s1688gemm_planar_complex_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/f16_s1688gemm_planar_complex_f16/cutlass_tensorop_f16_s1688gemm_planar_complex_f16_64x128_32x2_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_h1688gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm/all_sm75_h1688gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm/cutlass_tensorop_h1688gemm_256x128_32x2_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm/cutlass_tensorop_h1688gemm_256x128_32x2_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm/cutlass_tensorop_h1688gemm_256x128_32x2_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm/cutlass_tensorop_h1688gemm_256x128_32x2_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_h1688gemm_planar_complex


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/all_sm75_h1688gemm_planar_complex_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex/cutlass_tensorop_h1688gemm_planar_complex_64x128_32x2_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_h1688gemm_planar_complex_array


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/all_sm75_h1688gemm_planar_complex_array_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/h1688gemm_planar_complex_array/cutlass_tensorop_h1688gemm_planar_complex_array_64x128_32x2_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_i88128xorgemm_b1


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i88128xorgemm_b1/all_sm75_i88128xorgemm_b1_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i88128xorgemm_b1/cutlass_tensorop_i88128xorgemm_b1_256x128_512x2_tn_align128.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_i8816gemm_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8816gemm_s8/all_sm75_i8816gemm_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8816gemm_s8/cutlass_tensorop_i8816gemm_s8_256x128_64x2_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_i8816gemm_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8816gemm_u8/all_sm75_i8816gemm_u8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8816gemm_u8/cutlass_tensorop_i8816gemm_u8_256x128_64x2_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_i8832gemm_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8832gemm_s4/all_sm75_i8832gemm_s4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8832gemm_s4/cutlass_tensorop_i8832gemm_s4_256x128_128x2_tn_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_i8832gemm_u4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8832gemm_u4/all_sm75_i8832gemm_u4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/i8832gemm_u4/cutlass_tensorop_i8832gemm_u4_256x128_128x2_tn_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_s1688gemm_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_f16/all_sm75_s1688gemm_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_f16/cutlass_tensorop_s1688gemm_f16_256x128_32x2_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_f16/cutlass_tensorop_s1688gemm_f16_256x128_32x2_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_f16/cutlass_tensorop_s1688gemm_f16_256x128_32x2_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_f16/cutlass_tensorop_s1688gemm_f16_256x128_32x2_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_s1688gemm_planar_complex_array_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/all_sm75_s1688gemm_planar_complex_array_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_array_f16/cutlass_tensorop_s1688gemm_planar_complex_array_f16_64x128_32x2_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_s1688gemm_planar_complex_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/all_sm75_s1688gemm_planar_complex_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s1688gemm_planar_complex_f16/cutlass_tensorop_s1688gemm_planar_complex_f16_64x128_32x2_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_s4_i8832gemm_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s4_i8832gemm_s4/all_sm75_s4_i8832gemm_s4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s4_i8832gemm_s4/cutlass_tensorop_s4_i8832gemm_s4_256x128_128x2_tn_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s4_i8832gemm_s4/cutlass_tensorop_s4_i8832gemm_s4_256x128_128x2_n64t64_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_s8_i8816gemm_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s8_i8816gemm_s8/all_sm75_s8_i8816gemm_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s8_i8816gemm_s8/cutlass_tensorop_s8_i8816gemm_s8_256x128_64x2_tn_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/s8_i8816gemm_s8/cutlass_tensorop_s8_i8816gemm_s8_256x128_64x2_n32t32_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_u4_i8832gemm_u4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/u4_i8832gemm_u4/all_sm75_u4_i8832gemm_u4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/u4_i8832gemm_u4/cutlass_tensorop_u4_i8832gemm_u4_256x128_128x2_tn_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/u4_i8832gemm_u4/cutlass_tensorop_u4_i8832gemm_u4_256x128_128x2_n64t64_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm75_u8_i8816gemm_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/u8_i8816gemm_u8/all_sm75_u8_i8816gemm_u8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/u8_i8816gemm_u8/cutlass_tensorop_u8_i8816gemm_u8_256x128_64x2_tn_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/75/u8_i8816gemm_u8/cutlass_tensorop_u8_i8816gemm_u8_256x128_64x2_n32t32_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_bf16_s16816gemm_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_bf16/all_sm80_bf16_s16816gemm_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_bf16/cutlass_tensorop_bf16_s16816gemm_bf16_256x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_bf16/cutlass_tensorop_bf16_s16816gemm_bf16_256x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_bf16/cutlass_tensorop_bf16_s16816gemm_bf16_256x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_bf16/cutlass_tensorop_bf16_s16816gemm_bf16_256x128_32x3_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_bf16_s16816gemm_bf16_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_bf16_s8/all_sm80_bf16_s16816gemm_bf16_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_bf16_s8/cutlass_tensorop_bf16_s16816gemm_bf16_s8_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_bf16_s16816gemm_bf16_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_bf16_u8/all_sm80_bf16_s16816gemm_bf16_u8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_bf16_u8/cutlass_tensorop_bf16_s16816gemm_bf16_u8_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_bf16_s16816gemm_planar_complex_array_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/all_sm80_bf16_s16816gemm_planar_complex_array_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_array_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_array_bf16_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_bf16_s16816gemm_planar_complex_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/all_sm80_bf16_s16816gemm_planar_complex_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_planar_complex_bf16/cutlass_tensorop_bf16_s16816gemm_planar_complex_bf16_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_bf16_s16816gemm_s8_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_s8_bf16/all_sm80_bf16_s16816gemm_s8_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_s8_bf16/cutlass_tensorop_bf16_s16816gemm_s8_bf16_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_bf16_s16816gemm_u8_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_u8_bf16/all_sm80_bf16_s16816gemm_u8_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16816gemm_u8_bf16/cutlass_tensorop_bf16_s16816gemm_u8_bf16_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_bf16_s16832spgemm_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16832spgemm_bf16/all_sm80_bf16_s16832spgemm_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16832spgemm_bf16/cutlass_tensorop_bf16_s16832spgemm_bf16_64x128_64x6_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16832spgemm_bf16/cutlass_tensorop_bf16_s16832spgemm_bf16_64x128_64x6_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16832spgemm_bf16/cutlass_tensorop_bf16_s16832spgemm_bf16_64x128_64x6_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/bf16_s16832spgemm_bf16/cutlass_tensorop_bf16_s16832spgemm_bf16_64x128_64x6_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_c1688gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/all_sm80_c1688gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_cn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_nc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_cc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_ct_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_nh_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_ch_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_hn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_tc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_hc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_tt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_ht_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_th_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688gemm/cutlass_tensorop_c1688gemm_128x64_16x3_hh_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_c1688tf32gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/all_sm80_c1688tf32gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_cn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_nc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_cc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_ct_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_nh_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_ch_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_hn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_tc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_hc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_tt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_ht_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_th_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/c1688tf32gemm/cutlass_tensorop_c1688tf32gemm_128x128_16x4_hh_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_cgemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/all_sm80_cgemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_cn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_nc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_cc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_ct_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_nh_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_ch_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_hn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_tc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_hc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_tt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_ht_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_th_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/cgemm/cutlass_simt_cgemm_128x128_8x5_hh_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_d884gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/d884gemm/all_sm80_d884gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/d884gemm/cutlass_tensorop_d884gemm_128x128_16x3_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/d884gemm/cutlass_tensorop_d884gemm_128x128_16x3_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/d884gemm/cutlass_tensorop_d884gemm_128x128_16x3_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/d884gemm/cutlass_tensorop_d884gemm_128x128_16x3_tt_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_dgemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/dgemm/all_sm80_dgemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/dgemm/cutlass_simt_dgemm_128x128_8x3_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/dgemm/cutlass_simt_dgemm_128x128_8x3_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/dgemm/cutlass_simt_dgemm_128x128_8x3_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/dgemm/cutlass_simt_dgemm_128x128_8x3_tt_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_f16_s16816gemm_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_f16/all_sm80_f16_s16816gemm_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_f16/cutlass_tensorop_f16_s16816gemm_f16_256x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_f16/cutlass_tensorop_f16_s16816gemm_f16_256x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_f16/cutlass_tensorop_f16_s16816gemm_f16_256x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_f16/cutlass_tensorop_f16_s16816gemm_f16_256x128_32x3_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_f16_s16816gemm_f16_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_f16_s8/all_sm80_f16_s16816gemm_f16_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_f16_s8/cutlass_tensorop_f16_s16816gemm_f16_s8_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_f16_s16816gemm_f16_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_f16_u8/all_sm80_f16_s16816gemm_f16_u8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_f16_u8/cutlass_tensorop_f16_s16816gemm_f16_u8_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_f16_s16816gemm_planar_complex_array_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/all_sm80_f16_s16816gemm_planar_complex_array_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_array_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_array_f16_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_f16_s16816gemm_planar_complex_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/all_sm80_f16_s16816gemm_planar_complex_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_planar_complex_f16/cutlass_tensorop_f16_s16816gemm_planar_complex_f16_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_f16_s16816gemm_s8_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_s8_f16/all_sm80_f16_s16816gemm_s8_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_s8_f16/cutlass_tensorop_f16_s16816gemm_s8_f16_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_f16_s16816gemm_u8_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_u8_f16/all_sm80_f16_s16816gemm_u8_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16816gemm_u8_f16/cutlass_tensorop_f16_s16816gemm_u8_f16_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_f16_s16832spgemm_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16832spgemm_f16/all_sm80_f16_s16832spgemm_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16832spgemm_f16/cutlass_tensorop_f16_s16832spgemm_f16_64x128_64x6_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16832spgemm_f16/cutlass_tensorop_f16_s16832spgemm_f16_64x128_64x6_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16832spgemm_f16/cutlass_tensorop_f16_s16832spgemm_f16_64x128_64x6_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/f16_s16832spgemm_f16/cutlass_tensorop_f16_s16832spgemm_f16_64x128_64x6_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_gz884gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/all_sm80_gz884gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_cn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_nc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_cc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_ct_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_nh_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_ch_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_hn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_tc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_hc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_tt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_ht_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_th_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/gz884gemm/cutlass_tensorop_gz884gemm_64x64_8x3_hh_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_h16816gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm/all_sm80_h16816gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm/cutlass_tensorop_h16816gemm_256x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm/cutlass_tensorop_h16816gemm_256x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm/cutlass_tensorop_h16816gemm_256x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm/cutlass_tensorop_h16816gemm_256x128_32x3_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_h16816gemm_grouped


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_grouped/all_sm80_h16816gemm_grouped_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_grouped/cutlass_tensorop_h16816gemm_grouped_256x128_32x3_nn_align8_scheduleDevice.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_grouped/cutlass_tensorop_h16816gemm_grouped_256x128_32x3_nt_align8_scheduleDevice.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_grouped/cutlass_tensorop_h16816gemm_grouped_256x128_32x3_tn_align8_scheduleDevice.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_grouped/cutlass_tensorop_h16816gemm_grouped_256x128_32x3_tt_align8_scheduleDevice.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_h16816gemm_planar_complex


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/all_sm80_h16816gemm_planar_complex_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex/cutlass_tensorop_h16816gemm_planar_complex_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_h16816gemm_planar_complex_array


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/all_sm80_h16816gemm_planar_complex_array_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_planar_complex_array/cutlass_tensorop_h16816gemm_planar_complex_array_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_h16816gemm_s8_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_s8_f16/all_sm80_h16816gemm_s8_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16816gemm_s8_f16/cutlass_tensorop_h16816gemm_s8_f16_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_h16832spgemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16832spgemm/all_sm80_h16832spgemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16832spgemm/cutlass_tensorop_h16832spgemm_64x128_64x6_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16832spgemm/cutlass_tensorop_h16832spgemm_64x128_64x6_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16832spgemm/cutlass_tensorop_h16832spgemm_64x128_64x6_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/h16832spgemm/cutlass_tensorop_h16832spgemm_64x128_64x6_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_i168128spgemm_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i168128spgemm_s4/all_sm80_i168128spgemm_s4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i168128spgemm_s4/cutlass_tensorop_i168128spgemm_s4_64x64_256x4_tn_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_i168256andgemm_b1


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i168256andgemm_b1/all_sm80_i168256andgemm_b1_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i168256andgemm_b1/cutlass_tensorop_i168256andgemm_b1_256x128_512x3_tn_align128.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_i168256xorgemm_b1


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i168256xorgemm_b1/all_sm80_i168256xorgemm_b1_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i168256xorgemm_b1/cutlass_tensorop_i168256xorgemm_b1_256x128_512x3_tn_align128.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_i16832gemm_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16832gemm_s8/all_sm80_i16832gemm_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16832gemm_s8/cutlass_tensorop_i16832gemm_s8_256x128_64x3_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_i16832gemm_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16832gemm_u8/all_sm80_i16832gemm_u8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16832gemm_u8/cutlass_tensorop_i16832gemm_u8_256x128_64x3_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_i16864gemm_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16864gemm_s4/all_sm80_i16864gemm_s4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16864gemm_s4/cutlass_tensorop_i16864gemm_s4_256x128_128x3_tn_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_i16864gemm_u4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16864gemm_u4/all_sm80_i16864gemm_u4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16864gemm_u4/cutlass_tensorop_i16864gemm_u4_256x128_128x3_tn_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_i16864spgemm_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16864spgemm_s8/all_sm80_i16864spgemm_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/i16864spgemm_s8/cutlass_tensorop_i16864spgemm_s8_128x64_128x3_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_bf16/all_sm80_s16816gemm_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_bf16/cutlass_tensorop_s16816gemm_bf16_256x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_bf16/cutlass_tensorop_s16816gemm_bf16_256x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_bf16/cutlass_tensorop_s16816gemm_bf16_256x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_bf16/cutlass_tensorop_s16816gemm_bf16_256x128_32x3_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_bf16_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_bf16_s8/all_sm80_s16816gemm_bf16_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_bf16_s8/cutlass_tensorop_s16816gemm_bf16_s8_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_bf16_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_bf16_u8/all_sm80_s16816gemm_bf16_u8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_bf16_u8/cutlass_tensorop_s16816gemm_bf16_u8_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_f16/all_sm80_s16816gemm_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_f16/cutlass_tensorop_s16816gemm_f16_256x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_f16/cutlass_tensorop_s16816gemm_f16_256x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_f16/cutlass_tensorop_s16816gemm_f16_256x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_f16/cutlass_tensorop_s16816gemm_f16_256x128_32x3_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_f16_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_f16_s8/all_sm80_s16816gemm_f16_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_f16_s8/cutlass_tensorop_s16816gemm_f16_s8_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_f16_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_f16_u8/all_sm80_s16816gemm_f16_u8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_f16_u8/cutlass_tensorop_s16816gemm_f16_u8_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_grouped_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_bf16/all_sm80_s16816gemm_grouped_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_bf16/cutlass_tensorop_s16816gemm_grouped_bf16_256x128_32x3_nn_align8_scheduleDevice.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_bf16/cutlass_tensorop_s16816gemm_grouped_bf16_256x128_32x3_nt_align8_scheduleDevice.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_bf16/cutlass_tensorop_s16816gemm_grouped_bf16_256x128_32x3_tn_align8_scheduleDevice.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_bf16/cutlass_tensorop_s16816gemm_grouped_bf16_256x128_32x3_tt_align8_scheduleDevice.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_grouped_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_f16/all_sm80_s16816gemm_grouped_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_f16/cutlass_tensorop_s16816gemm_grouped_f16_256x128_32x3_nn_align8_scheduleDevice.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_f16/cutlass_tensorop_s16816gemm_grouped_f16_256x128_32x3_nt_align8_scheduleDevice.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_f16/cutlass_tensorop_s16816gemm_grouped_f16_256x128_32x3_tn_align8_scheduleDevice.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_grouped_f16/cutlass_tensorop_s16816gemm_grouped_f16_256x128_32x3_tt_align8_scheduleDevice.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_planar_complex_array_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/all_sm80_s16816gemm_planar_complex_array_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_bf16/cutlass_tensorop_s16816gemm_planar_complex_array_bf16_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_planar_complex_array_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/all_sm80_s16816gemm_planar_complex_array_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_array_f16/cutlass_tensorop_s16816gemm_planar_complex_array_f16_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_planar_complex_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/all_sm80_s16816gemm_planar_complex_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_bf16/cutlass_tensorop_s16816gemm_planar_complex_bf16_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_planar_complex_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/all_sm80_s16816gemm_planar_complex_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_cn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_nc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_cc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_ct_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_nh_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_ch_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_hn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_tc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_hc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_tt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_ht_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_th_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_planar_complex_f16/cutlass_tensorop_s16816gemm_planar_complex_f16_64x128_32x3_hh_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_s8_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_s8_bf16/all_sm80_s16816gemm_s8_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_s8_bf16/cutlass_tensorop_s16816gemm_s8_bf16_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_s8_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_s8_f16/all_sm80_s16816gemm_s8_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_s8_f16/cutlass_tensorop_s16816gemm_s8_f16_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_u8_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_u8_bf16/all_sm80_s16816gemm_u8_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_u8_bf16/cutlass_tensorop_s16816gemm_u8_bf16_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816gemm_u8_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_u8_f16/all_sm80_s16816gemm_u8_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816gemm_u8_f16/cutlass_tensorop_s16816gemm_u8_f16_128x128_64x4_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16816tf32spgemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816tf32spgemm/all_sm80_s16816tf32spgemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816tf32spgemm/cutlass_tensorop_s16816tf32spgemm_128x64_32x3_nn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816tf32spgemm/cutlass_tensorop_s16816tf32spgemm_128x64_32x3_nt_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816tf32spgemm/cutlass_tensorop_s16816tf32spgemm_128x64_32x3_tn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16816tf32spgemm/cutlass_tensorop_s16816tf32spgemm_128x64_32x3_tt_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16832spgemm_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_bf16/all_sm80_s16832spgemm_bf16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_bf16/cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_bf16/cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_bf16/cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_bf16/cutlass_tensorop_s16832spgemm_bf16_64x128_64x6_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s16832spgemm_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_f16/all_sm80_s16832spgemm_f16_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_f16/cutlass_tensorop_s16832spgemm_f16_64x128_64x6_nn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_f16/cutlass_tensorop_s16832spgemm_f16_64x128_64x6_nt_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_f16/cutlass_tensorop_s16832spgemm_f16_64x128_64x6_tn_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s16832spgemm_f16/cutlass_tensorop_s16832spgemm_f16_64x128_64x6_tt_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s1688bf16gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688bf16gemm/all_sm80_s1688bf16gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688bf16gemm/cutlass_tensorop_s1688bf16gemm_256x128_16x3_nn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688bf16gemm/cutlass_tensorop_s1688bf16gemm_256x128_16x3_nt_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688bf16gemm/cutlass_tensorop_s1688bf16gemm_256x128_16x3_tn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688bf16gemm/cutlass_tensorop_s1688bf16gemm_256x128_16x3_tt_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s1688f16gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688f16gemm/all_sm80_s1688f16gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688f16gemm/cutlass_tensorop_s1688f16gemm_256x128_16x3_nn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688f16gemm/cutlass_tensorop_s1688f16gemm_256x128_16x3_nt_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688f16gemm/cutlass_tensorop_s1688f16gemm_256x128_16x3_tn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688f16gemm/cutlass_tensorop_s1688f16gemm_256x128_16x3_tt_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s1688gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm/all_sm80_s1688gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm/cutlass_tensorop_s1688gemm_128x128_16x4_nn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm/cutlass_tensorop_s1688gemm_128x128_16x4_nt_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm/cutlass_tensorop_s1688gemm_128x128_16x4_tn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm/cutlass_tensorop_s1688gemm_128x128_16x4_tt_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s1688gemm_tf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm_tf32/all_sm80_s1688gemm_tf32_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm_tf32/cutlass_tensorop_s1688gemm_tf32_256x128_16x3_nn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm_tf32/cutlass_tensorop_s1688gemm_tf32_256x128_16x3_nt_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm_tf32/cutlass_tensorop_s1688gemm_tf32_256x128_16x3_tn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688gemm_tf32/cutlass_tensorop_s1688gemm_tf32_256x128_16x3_tt_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s1688tf32gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688tf32gemm/all_sm80_s1688tf32gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688tf32gemm/cutlass_tensorop_s1688tf32gemm_256x128_16x3_nn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688tf32gemm/cutlass_tensorop_s1688tf32gemm_256x128_16x3_nt_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688tf32gemm/cutlass_tensorop_s1688tf32gemm_256x128_16x3_tn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s1688tf32gemm/cutlass_tensorop_s1688tf32gemm_256x128_16x3_tt_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s4_i168128spgemm_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s4_i168128spgemm_s4/all_sm80_s4_i168128spgemm_s4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s4_i168128spgemm_s4/cutlass_tensorop_s4_i168128spgemm_s4_64x64_256x4_tn_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s4_i16864gemm_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s4_i16864gemm_s4/all_sm80_s4_i16864gemm_s4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s4_i16864gemm_s4/cutlass_tensorop_s4_i16864gemm_s4_256x128_128x3_tn_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s4_i16864gemm_s4/cutlass_tensorop_s4_i16864gemm_s4_256x128_128x3_n64t64_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s8_i16832gemm_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s8_i16832gemm_s8/all_sm80_s8_i16832gemm_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s8_i16832gemm_s8/cutlass_tensorop_s8_i16832gemm_s8_256x128_64x3_tn_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s8_i16832gemm_s8/cutlass_tensorop_s8_i16832gemm_s8_256x128_64x3_n32t32_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_s8_i16864spgemm_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s8_i16864spgemm_s8/all_sm80_s8_i16864spgemm_s8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/s8_i16864spgemm_s8/cutlass_tensorop_s8_i16864spgemm_s8_128x64_128x3_tn_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_sgemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/sgemm/all_sm80_sgemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/sgemm/cutlass_simt_sgemm_256x128_8x5_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/sgemm/cutlass_simt_sgemm_256x128_8x5_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/sgemm/cutlass_simt_sgemm_256x128_8x5_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/sgemm/cutlass_simt_sgemm_256x128_8x5_tt_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_tf32_s1688gemm_tf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/tf32_s1688gemm_tf32/all_sm80_tf32_s1688gemm_tf32_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/tf32_s1688gemm_tf32/cutlass_tensorop_tf32_s1688gemm_tf32_256x128_16x3_nn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/tf32_s1688gemm_tf32/cutlass_tensorop_tf32_s1688gemm_tf32_256x128_16x3_nt_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/tf32_s1688gemm_tf32/cutlass_tensorop_tf32_s1688gemm_tf32_256x128_16x3_tn_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/tf32_s1688gemm_tf32/cutlass_tensorop_tf32_s1688gemm_tf32_256x128_16x3_tt_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_u4_i16864gemm_u4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/u4_i16864gemm_u4/all_sm80_u4_i16864gemm_u4_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/u4_i16864gemm_u4/cutlass_tensorop_u4_i16864gemm_u4_256x128_128x3_tn_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/u4_i16864gemm_u4/cutlass_tensorop_u4_i16864gemm_u4_256x128_128x3_n64t64_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_u8_i16832gemm_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/u8_i16832gemm_u8/all_sm80_u8_i16832gemm_u8_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/u8_i16832gemm_u8/cutlass_tensorop_u8_i16832gemm_u8_256x128_64x3_tn_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/u8_i16832gemm_u8/cutlass_tensorop_u8_i16832gemm_u8_256x128_64x3_n32t32_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX gemm_sm80_z884gemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/all_sm80_z884gemm_gemm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_nn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_cn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_nc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_cc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_nt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_ct_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_nh_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_ch_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_tn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_hn_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_tc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_hc_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_tt_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_ht_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_th_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/gemm/80/z884gemm/cutlass_tensorop_z884gemm_128x64_8x3_hh_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm50_cf32_cdgrad_optimized_cf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/cf32_cdgrad_optimized_cf32/all_sm50_cf32_cdgrad_optimized_cf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/cf32_cdgrad_optimized_cf32/cutlass_simt_cf32_cdgrad_optimized_cf32_128x64_8x2_nhwc_unity_stride_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/cf32_cdgrad_optimized_cf32/cutlass_simt_cf32_cdgrad_optimized_cf32_128x64_8x2_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm50_cf32_cfprop_optimized_cf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/cf32_cfprop_optimized_cf32/all_sm50_cf32_cfprop_optimized_cf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/cf32_cfprop_optimized_cf32/cutlass_simt_cf32_cfprop_optimized_cf32_128x64_8x2_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm50_cf32_cwgrad_optimized_cf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/cf32_cwgrad_optimized_cf32/all_sm50_cf32_cwgrad_optimized_cf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/cf32_cwgrad_optimized_cf32/cutlass_simt_cf32_cwgrad_optimized_cf32_128x64_8x2_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm50_sdgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/sdgrad_optimized/all_sm50_sdgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/sdgrad_optimized/cutlass_simt_sdgrad_optimized_128x128_8x2_nhwc_unity_stride_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/sdgrad_optimized/cutlass_simt_sdgrad_optimized_128x128_8x2_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm50_sfprop_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/sfprop_optimized/all_sm50_sfprop_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/sfprop_optimized/cutlass_simt_sfprop_optimized_128x128_8x2_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm50_swgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/swgrad_optimized/all_sm50_swgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/50/swgrad_optimized/cutlass_simt_swgrad_optimized_128x128_8x2_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm60_hfprop_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/60/hfprop_optimized/all_sm60_hfprop_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/60/hfprop_optimized/cutlass_simt_hfprop_optimized_64x32x9_1x8x8x32_3_filter3x3_nhwc_depthwise_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_cf32_cdgrad_optimized_cf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/cf32_cdgrad_optimized_cf32/all_sm75_cf32_cdgrad_optimized_cf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/cf32_cdgrad_optimized_cf32/cutlass_simt_cf32_cdgrad_optimized_cf32_128x128_8x5_nhwc_unity_stride_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/cf32_cdgrad_optimized_cf32/cutlass_simt_cf32_cdgrad_optimized_cf32_128x128_8x5_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_cf32_cfprop_optimized_cf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/cf32_cfprop_optimized_cf32/all_sm75_cf32_cfprop_optimized_cf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/cf32_cfprop_optimized_cf32/cutlass_simt_cf32_cfprop_optimized_cf32_128x128_8x5_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_cf32_cwgrad_optimized_cf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/cf32_cwgrad_optimized_cf32/all_sm75_cf32_cwgrad_optimized_cf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/cf32_cwgrad_optimized_cf32/cutlass_simt_cf32_cwgrad_optimized_cf32_128x128_8x5_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_f16_s1688dgrad_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688dgrad_optimized_f16/all_sm75_f16_s1688dgrad_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688dgrad_optimized_f16/cutlass_tensorop_f16_s1688dgrad_optimized_f16_256x128_32x2_nhwc_unity_stride_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688dgrad_optimized_f16/cutlass_tensorop_f16_s1688dgrad_optimized_f16_256x128_32x2_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_f16_s1688fprop_few_channels_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688fprop_few_channels_f16/all_sm75_f16_s1688fprop_few_channels_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688fprop_few_channels_f16/cutlass_tensorop_f16_s1688fprop_few_channels_f16_128x64_32x2_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_f16_s1688fprop_fixed_channels_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688fprop_fixed_channels_f16/all_sm75_f16_s1688fprop_fixed_channels_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688fprop_fixed_channels_f16/cutlass_tensorop_f16_s1688fprop_fixed_channels_f16_128x64_32x2_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_f16_s1688fprop_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688fprop_optimized_f16/all_sm75_f16_s1688fprop_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688fprop_optimized_f16/cutlass_tensorop_f16_s1688fprop_optimized_f16_256x128_32x2_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_f16_s1688wgrad_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688wgrad_optimized_f16/all_sm75_f16_s1688wgrad_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/f16_s1688wgrad_optimized_f16/cutlass_tensorop_f16_s1688wgrad_optimized_f16_256x128_32x2_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_h1688dgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688dgrad_optimized/all_sm75_h1688dgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688dgrad_optimized/cutlass_tensorop_h1688dgrad_optimized_256x128_32x2_nhwc_unity_stride_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688dgrad_optimized/cutlass_tensorop_h1688dgrad_optimized_256x128_32x2_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_h1688fprop_few_channels


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688fprop_few_channels/all_sm75_h1688fprop_few_channels_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688fprop_few_channels/cutlass_tensorop_h1688fprop_few_channels_128x64_32x2_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_h1688fprop_fixed_channels


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688fprop_fixed_channels/all_sm75_h1688fprop_fixed_channels_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688fprop_fixed_channels/cutlass_tensorop_h1688fprop_fixed_channels_128x64_32x2_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_h1688fprop_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688fprop_optimized/all_sm75_h1688fprop_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688fprop_optimized/cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_h1688wgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688wgrad_optimized/all_sm75_h1688wgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/h1688wgrad_optimized/cutlass_tensorop_h1688wgrad_optimized_256x128_32x2_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_i8816fprop_optimized_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/i8816fprop_optimized_s8/all_sm75_i8816fprop_optimized_s8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/i8816fprop_optimized_s8/cutlass_tensorop_i8816fprop_optimized_s8_256x128_64x2_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_i8816fprop_optimized_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/i8816fprop_optimized_u8/all_sm75_i8816fprop_optimized_u8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/i8816fprop_optimized_u8/cutlass_tensorop_i8816fprop_optimized_u8_256x128_64x2_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_i8832fprop_optimized_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/i8832fprop_optimized_s4/all_sm75_i8832fprop_optimized_s4_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/i8832fprop_optimized_s4/cutlass_tensorop_i8832fprop_optimized_s4_256x128_128x2_nhwc_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_i8832fprop_optimized_u4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/i8832fprop_optimized_u4/all_sm75_i8832fprop_optimized_u4_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/i8832fprop_optimized_u4/cutlass_tensorop_i8832fprop_optimized_u4_256x128_128x2_nhwc_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_s1688dgrad_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688dgrad_optimized_f16/all_sm75_s1688dgrad_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688dgrad_optimized_f16/cutlass_tensorop_s1688dgrad_optimized_f16_256x128_32x2_nhwc_unity_stride_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688dgrad_optimized_f16/cutlass_tensorop_s1688dgrad_optimized_f16_256x128_32x2_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_s1688fprop_few_channels_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688fprop_few_channels_f16/all_sm75_s1688fprop_few_channels_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688fprop_few_channels_f16/cutlass_tensorop_s1688fprop_few_channels_f16_128x64_32x2_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_s1688fprop_fixed_channels_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688fprop_fixed_channels_f16/all_sm75_s1688fprop_fixed_channels_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688fprop_fixed_channels_f16/cutlass_tensorop_s1688fprop_fixed_channels_f16_128x64_32x2_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_s1688fprop_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688fprop_optimized_f16/all_sm75_s1688fprop_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688fprop_optimized_f16/cutlass_tensorop_s1688fprop_optimized_f16_256x128_32x2_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_s1688wgrad_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688wgrad_optimized_f16/all_sm75_s1688wgrad_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s1688wgrad_optimized_f16/cutlass_tensorop_s1688wgrad_optimized_f16_256x128_32x2_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_s4_i8832fprop_optimized_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s4_i8832fprop_optimized_s4/all_sm75_s4_i8832fprop_optimized_s4_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s4_i8832fprop_optimized_s4/cutlass_tensorop_s4_i8832fprop_optimized_s4_256x128_128x2_nhwc_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s4_i8832fprop_optimized_s4/cutlass_tensorop_s4_i8832fprop_optimized_s4_256x128_128x2_nc64hw64_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_s8_i8816fprop_few_channels_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s8_i8816fprop_few_channels_s8/all_sm75_s8_i8816fprop_few_channels_s8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s8_i8816fprop_few_channels_s8/cutlass_tensorop_s8_i8816fprop_few_channels_s8_256x128_64x2_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_s8_i8816fprop_fixed_channels_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s8_i8816fprop_fixed_channels_s8/all_sm75_s8_i8816fprop_fixed_channels_s8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s8_i8816fprop_fixed_channels_s8/cutlass_tensorop_s8_i8816fprop_fixed_channels_s8_256x128_64x2_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_s8_i8816fprop_optimized_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s8_i8816fprop_optimized_s8/all_sm75_s8_i8816fprop_optimized_s8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s8_i8816fprop_optimized_s8/cutlass_tensorop_s8_i8816fprop_optimized_s8_256x128_64x2_nhwc_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/s8_i8816fprop_optimized_s8/cutlass_tensorop_s8_i8816fprop_optimized_s8_256x128_64x2_nc32hw32_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_u4_i8832fprop_optimized_u4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u4_i8832fprop_optimized_u4/all_sm75_u4_i8832fprop_optimized_u4_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u4_i8832fprop_optimized_u4/cutlass_tensorop_u4_i8832fprop_optimized_u4_256x128_128x2_nhwc_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u4_i8832fprop_optimized_u4/cutlass_tensorop_u4_i8832fprop_optimized_u4_256x128_128x2_nc64hw64_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_u8_i8816fprop_few_channels_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u8_i8816fprop_few_channels_u8/all_sm75_u8_i8816fprop_few_channels_u8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u8_i8816fprop_few_channels_u8/cutlass_tensorop_u8_i8816fprop_few_channels_u8_256x128_64x2_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_u8_i8816fprop_fixed_channels_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u8_i8816fprop_fixed_channels_u8/all_sm75_u8_i8816fprop_fixed_channels_u8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u8_i8816fprop_fixed_channels_u8/cutlass_tensorop_u8_i8816fprop_fixed_channels_u8_256x128_64x2_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm75_u8_i8816fprop_optimized_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u8_i8816fprop_optimized_u8/all_sm75_u8_i8816fprop_optimized_u8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u8_i8816fprop_optimized_u8/cutlass_tensorop_u8_i8816fprop_optimized_u8_256x128_64x2_nhwc_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/75/u8_i8816fprop_optimized_u8/cutlass_tensorop_u8_i8816fprop_optimized_u8_256x128_64x2_nc32hw32_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_bf16_s16816dgrad_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816dgrad_optimized_bf16/all_sm80_bf16_s16816dgrad_optimized_bf16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816dgrad_optimized_bf16/cutlass_tensorop_bf16_s16816dgrad_optimized_bf16_256x128_32x3_nhwc_unity_stride_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816dgrad_optimized_bf16/cutlass_tensorop_bf16_s16816dgrad_optimized_bf16_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_bf16_s16816fprop_fixed_channels_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816fprop_fixed_channels_bf16/all_sm80_bf16_s16816fprop_fixed_channels_bf16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816fprop_fixed_channels_bf16/cutlass_tensorop_bf16_s16816fprop_fixed_channels_bf16_256x128_32x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_bf16_s16816fprop_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816fprop_optimized_bf16/all_sm80_bf16_s16816fprop_optimized_bf16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816fprop_optimized_bf16/cutlass_tensorop_bf16_s16816fprop_optimized_bf16_256x128_32x3_nhwc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816fprop_optimized_bf16/cutlass_tensorop_bf16_s16816fprop_optimized_bf16_256x128_32x3_nhwc_single_group_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_bf16_s16816wgrad_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816wgrad_optimized_bf16/all_sm80_bf16_s16816wgrad_optimized_bf16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/bf16_s16816wgrad_optimized_bf16/cutlass_tensorop_bf16_s16816wgrad_optimized_bf16_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_f16_s16816dgrad_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816dgrad_optimized_f16/all_sm80_f16_s16816dgrad_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816dgrad_optimized_f16/cutlass_tensorop_f16_s16816dgrad_optimized_f16_256x128_32x3_nhwc_unity_stride_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816dgrad_optimized_f16/cutlass_tensorop_f16_s16816dgrad_optimized_f16_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_f16_s16816fprop_fixed_channels_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816fprop_fixed_channels_f16/all_sm80_f16_s16816fprop_fixed_channels_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816fprop_fixed_channels_f16/cutlass_tensorop_f16_s16816fprop_fixed_channels_f16_256x128_32x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_f16_s16816fprop_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816fprop_optimized_f16/all_sm80_f16_s16816fprop_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816fprop_optimized_f16/cutlass_tensorop_f16_s16816fprop_optimized_f16_256x128_32x3_nhwc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816fprop_optimized_f16/cutlass_tensorop_f16_s16816fprop_optimized_f16_256x128_32x3_nhwc_single_group_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_f16_s16816wgrad_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816wgrad_optimized_f16/all_sm80_f16_s16816wgrad_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/f16_s16816wgrad_optimized_f16/cutlass_tensorop_f16_s16816wgrad_optimized_f16_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_h16816dgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816dgrad_optimized/all_sm80_h16816dgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816dgrad_optimized/cutlass_tensorop_h16816dgrad_optimized_256x128_32x3_nhwc_unity_stride_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816dgrad_optimized/cutlass_tensorop_h16816dgrad_optimized_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_h16816fprop_fixed_channels


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816fprop_fixed_channels/all_sm80_h16816fprop_fixed_channels_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816fprop_fixed_channels/cutlass_tensorop_h16816fprop_fixed_channels_256x128_32x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_h16816fprop_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816fprop_optimized/all_sm80_h16816fprop_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816fprop_optimized/cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816fprop_optimized/cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_single_group_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_h16816wgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816wgrad_optimized/all_sm80_h16816wgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/h16816wgrad_optimized/cutlass_tensorop_h16816wgrad_optimized_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_i16832fprop_optimized_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16832fprop_optimized_s8/all_sm80_i16832fprop_optimized_s8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16832fprop_optimized_s8/cutlass_tensorop_i16832fprop_optimized_s8_256x128_64x3_nhwc_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16832fprop_optimized_s8/cutlass_tensorop_i16832fprop_optimized_s8_256x128_64x3_nhwc_single_group_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_i16832fprop_optimized_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16832fprop_optimized_u8/all_sm80_i16832fprop_optimized_u8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16832fprop_optimized_u8/cutlass_tensorop_i16832fprop_optimized_u8_256x128_64x3_nhwc_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16832fprop_optimized_u8/cutlass_tensorop_i16832fprop_optimized_u8_256x128_64x3_nhwc_single_group_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_i16864fprop_optimized_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16864fprop_optimized_s4/all_sm80_i16864fprop_optimized_s4_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16864fprop_optimized_s4/cutlass_tensorop_i16864fprop_optimized_s4_256x128_128x3_nhwc_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16864fprop_optimized_s4/cutlass_tensorop_i16864fprop_optimized_s4_256x128_128x3_nhwc_single_group_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_i16864fprop_optimized_u4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16864fprop_optimized_u4/all_sm80_i16864fprop_optimized_u4_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16864fprop_optimized_u4/cutlass_tensorop_i16864fprop_optimized_u4_256x128_128x3_nhwc_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/i16864fprop_optimized_u4/cutlass_tensorop_i16864fprop_optimized_u4_256x128_128x3_nhwc_single_group_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s16816dgrad_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816dgrad_optimized_bf16/all_sm80_s16816dgrad_optimized_bf16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816dgrad_optimized_bf16/cutlass_tensorop_s16816dgrad_optimized_bf16_256x128_32x3_nhwc_unity_stride_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816dgrad_optimized_bf16/cutlass_tensorop_s16816dgrad_optimized_bf16_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s16816dgrad_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816dgrad_optimized_f16/all_sm80_s16816dgrad_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816dgrad_optimized_f16/cutlass_tensorop_s16816dgrad_optimized_f16_256x128_32x3_nhwc_unity_stride_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816dgrad_optimized_f16/cutlass_tensorop_s16816dgrad_optimized_f16_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s16816fprop_fixed_channels_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_fixed_channels_bf16/all_sm80_s16816fprop_fixed_channels_bf16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_fixed_channels_bf16/cutlass_tensorop_s16816fprop_fixed_channels_bf16_256x128_32x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s16816fprop_fixed_channels_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_fixed_channels_f16/all_sm80_s16816fprop_fixed_channels_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_fixed_channels_f16/cutlass_tensorop_s16816fprop_fixed_channels_f16_256x128_32x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s16816fprop_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_optimized_bf16/all_sm80_s16816fprop_optimized_bf16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_optimized_bf16/cutlass_tensorop_s16816fprop_optimized_bf16_256x128_32x3_nhwc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_optimized_bf16/cutlass_tensorop_s16816fprop_optimized_bf16_256x128_32x3_nhwc_single_group_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s16816fprop_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_optimized_f16/all_sm80_s16816fprop_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_optimized_f16/cutlass_tensorop_s16816fprop_optimized_f16_256x128_32x3_nhwc_align8.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816fprop_optimized_f16/cutlass_tensorop_s16816fprop_optimized_f16_256x128_32x3_nhwc_single_group_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s16816wgrad_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816wgrad_optimized_bf16/all_sm80_s16816wgrad_optimized_bf16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816wgrad_optimized_bf16/cutlass_tensorop_s16816wgrad_optimized_bf16_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s16816wgrad_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816wgrad_optimized_f16/all_sm80_s16816wgrad_optimized_f16_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s16816wgrad_optimized_f16/cutlass_tensorop_s16816wgrad_optimized_f16_256x128_32x3_nhwc_align8.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688bf16dgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688bf16dgrad_optimized/all_sm80_s1688bf16dgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688bf16dgrad_optimized/cutlass_tensorop_s1688bf16dgrad_optimized_256x128_16x3_nhwc_unity_stride_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688bf16dgrad_optimized/cutlass_tensorop_s1688bf16dgrad_optimized_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688bf16fprop_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688bf16fprop_optimized/all_sm80_s1688bf16fprop_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688bf16fprop_optimized/cutlass_tensorop_s1688bf16fprop_optimized_256x128_16x3_nhwc_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688bf16fprop_optimized/cutlass_tensorop_s1688bf16fprop_optimized_256x128_16x3_nhwc_single_group_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688bf16wgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688bf16wgrad_optimized/all_sm80_s1688bf16wgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688bf16wgrad_optimized/cutlass_tensorop_s1688bf16wgrad_optimized_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688dgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688dgrad_optimized/all_sm80_s1688dgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688dgrad_optimized/cutlass_tensorop_s1688dgrad_optimized_128x128_16x4_nhwc_unity_stride_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688dgrad_optimized/cutlass_tensorop_s1688dgrad_optimized_128x128_16x4_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688dgrad_optimized_tf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688dgrad_optimized_tf32/all_sm80_s1688dgrad_optimized_tf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688dgrad_optimized_tf32/cutlass_tensorop_s1688dgrad_optimized_tf32_256x128_16x3_nhwc_unity_stride_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688dgrad_optimized_tf32/cutlass_tensorop_s1688dgrad_optimized_tf32_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688f16dgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688f16dgrad_optimized/all_sm80_s1688f16dgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688f16dgrad_optimized/cutlass_tensorop_s1688f16dgrad_optimized_256x128_16x3_nhwc_unity_stride_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688f16dgrad_optimized/cutlass_tensorop_s1688f16dgrad_optimized_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688f16fprop_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688f16fprop_optimized/all_sm80_s1688f16fprop_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688f16fprop_optimized/cutlass_tensorop_s1688f16fprop_optimized_256x128_16x3_nhwc_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688f16fprop_optimized/cutlass_tensorop_s1688f16fprop_optimized_256x128_16x3_nhwc_single_group_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688f16wgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688f16wgrad_optimized/all_sm80_s1688f16wgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688f16wgrad_optimized/cutlass_tensorop_s1688f16wgrad_optimized_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688fprop_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688fprop_optimized/all_sm80_s1688fprop_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688fprop_optimized/cutlass_tensorop_s1688fprop_optimized_128x128_16x4_nhwc_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688fprop_optimized/cutlass_tensorop_s1688fprop_optimized_128x128_16x4_nhwc_single_group_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688fprop_optimized_tf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688fprop_optimized_tf32/all_sm80_s1688fprop_optimized_tf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688fprop_optimized_tf32/cutlass_tensorop_s1688fprop_optimized_tf32_256x128_16x3_nhwc_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688fprop_optimized_tf32/cutlass_tensorop_s1688fprop_optimized_tf32_256x128_16x3_nhwc_single_group_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688tf32dgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688tf32dgrad_optimized/all_sm80_s1688tf32dgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688tf32dgrad_optimized/cutlass_tensorop_s1688tf32dgrad_optimized_256x128_16x3_nhwc_unity_stride_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688tf32dgrad_optimized/cutlass_tensorop_s1688tf32dgrad_optimized_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688tf32fprop_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688tf32fprop_optimized/all_sm80_s1688tf32fprop_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688tf32fprop_optimized/cutlass_tensorop_s1688tf32fprop_optimized_256x128_16x3_nhwc_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688tf32fprop_optimized/cutlass_tensorop_s1688tf32fprop_optimized_256x128_16x3_nhwc_single_group_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688tf32wgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688tf32wgrad_optimized/all_sm80_s1688tf32wgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688tf32wgrad_optimized/cutlass_tensorop_s1688tf32wgrad_optimized_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688wgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688wgrad_optimized/all_sm80_s1688wgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688wgrad_optimized/cutlass_tensorop_s1688wgrad_optimized_128x128_16x4_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s1688wgrad_optimized_tf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688wgrad_optimized_tf32/all_sm80_s1688wgrad_optimized_tf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s1688wgrad_optimized_tf32/cutlass_tensorop_s1688wgrad_optimized_tf32_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s4_i16864fprop_optimized_s4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s4_i16864fprop_optimized_s4/all_sm80_s4_i16864fprop_optimized_s4_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s4_i16864fprop_optimized_s4/cutlass_tensorop_s4_i16864fprop_optimized_s4_256x128_128x3_nhwc_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s4_i16864fprop_optimized_s4/cutlass_tensorop_s4_i16864fprop_optimized_s4_256x128_128x3_nhwc_single_group_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s4_i16864fprop_optimized_s4/cutlass_tensorop_s4_i16864fprop_optimized_s4_256x128_128x3_nc64hw64_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s8_i16832fprop_few_channels_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s8_i16832fprop_few_channels_s8/all_sm80_s8_i16832fprop_few_channels_s8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s8_i16832fprop_few_channels_s8/cutlass_tensorop_s8_i16832fprop_few_channels_s8_256x128_64x3_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s8_i16832fprop_fixed_channels_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s8_i16832fprop_fixed_channels_s8/all_sm80_s8_i16832fprop_fixed_channels_s8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s8_i16832fprop_fixed_channels_s8/cutlass_tensorop_s8_i16832fprop_fixed_channels_s8_256x128_64x3_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_s8_i16832fprop_optimized_s8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s8_i16832fprop_optimized_s8/all_sm80_s8_i16832fprop_optimized_s8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s8_i16832fprop_optimized_s8/cutlass_tensorop_s8_i16832fprop_optimized_s8_256x128_64x3_nhwc_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s8_i16832fprop_optimized_s8/cutlass_tensorop_s8_i16832fprop_optimized_s8_256x128_64x3_nhwc_single_group_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/s8_i16832fprop_optimized_s8/cutlass_tensorop_s8_i16832fprop_optimized_s8_256x128_64x3_nc32hw32_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_sdgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/sdgrad_optimized/all_sm80_sdgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/sdgrad_optimized/cutlass_simt_sdgrad_optimized_256x128_8x5_nhwc_unity_stride_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/sdgrad_optimized/cutlass_simt_sdgrad_optimized_256x128_8x5_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_sfprop_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/sfprop_optimized/all_sm80_sfprop_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/sfprop_optimized/cutlass_simt_sfprop_optimized_256x128_8x5_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_swgrad_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/swgrad_optimized/all_sm80_swgrad_optimized_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/swgrad_optimized/cutlass_simt_swgrad_optimized_256x128_8x5_nhwc_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_tf32_s1688dgrad_optimized_tf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/tf32_s1688dgrad_optimized_tf32/all_sm80_tf32_s1688dgrad_optimized_tf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/tf32_s1688dgrad_optimized_tf32/cutlass_tensorop_tf32_s1688dgrad_optimized_tf32_256x128_16x3_nhwc_unity_stride_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/tf32_s1688dgrad_optimized_tf32/cutlass_tensorop_tf32_s1688dgrad_optimized_tf32_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_tf32_s1688fprop_optimized_tf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/tf32_s1688fprop_optimized_tf32/all_sm80_tf32_s1688fprop_optimized_tf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/tf32_s1688fprop_optimized_tf32/cutlass_tensorop_tf32_s1688fprop_optimized_tf32_256x128_16x3_nhwc_align4.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/tf32_s1688fprop_optimized_tf32/cutlass_tensorop_tf32_s1688fprop_optimized_tf32_256x128_16x3_nhwc_single_group_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_tf32_s1688wgrad_optimized_tf32


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/tf32_s1688wgrad_optimized_tf32/all_sm80_tf32_s1688wgrad_optimized_tf32_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/tf32_s1688wgrad_optimized_tf32/cutlass_tensorop_tf32_s1688wgrad_optimized_tf32_256x128_16x3_nhwc_align4.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_u4_i16864fprop_optimized_u4


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u4_i16864fprop_optimized_u4/all_sm80_u4_i16864fprop_optimized_u4_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u4_i16864fprop_optimized_u4/cutlass_tensorop_u4_i16864fprop_optimized_u4_256x128_128x3_nhwc_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u4_i16864fprop_optimized_u4/cutlass_tensorop_u4_i16864fprop_optimized_u4_256x128_128x3_nhwc_single_group_align32.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u4_i16864fprop_optimized_u4/cutlass_tensorop_u4_i16864fprop_optimized_u4_256x128_128x3_nc64hw64_align32.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_u8_i16832fprop_few_channels_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u8_i16832fprop_few_channels_u8/all_sm80_u8_i16832fprop_few_channels_u8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u8_i16832fprop_few_channels_u8/cutlass_tensorop_u8_i16832fprop_few_channels_u8_256x128_64x3_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_u8_i16832fprop_fixed_channels_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u8_i16832fprop_fixed_channels_u8/all_sm80_u8_i16832fprop_fixed_channels_u8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u8_i16832fprop_fixed_channels_u8/cutlass_tensorop_u8_i16832fprop_fixed_channels_u8_256x128_64x3_nhwc_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv2d_sm80_u8_i16832fprop_optimized_u8


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u8_i16832fprop_optimized_u8/all_sm80_u8_i16832fprop_optimized_u8_conv2d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u8_i16832fprop_optimized_u8/cutlass_tensorop_u8_i16832fprop_optimized_u8_256x128_64x3_nhwc_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u8_i16832fprop_optimized_u8/cutlass_tensorop_u8_i16832fprop_optimized_u8_256x128_64x3_nhwc_single_group_align16.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv2d/80/u8_i16832fprop_optimized_u8/cutlass_tensorop_u8_i16832fprop_optimized_u8_256x128_64x3_nc32hw32_align16.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_bf16_s16816dgrad3d_analytic_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/bf16_s16816dgrad3d_analytic_bf16/all_sm80_bf16_s16816dgrad3d_analytic_bf16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/bf16_s16816dgrad3d_analytic_bf16/cutlass_tensorop_bf16_s16816dgrad3d_analytic_bf16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_bf16_s16816dgrad3d_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/bf16_s16816dgrad3d_optimized_bf16/all_sm80_bf16_s16816dgrad3d_optimized_bf16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/bf16_s16816dgrad3d_optimized_bf16/cutlass_tensorop_bf16_s16816dgrad3d_optimized_bf16_256x128_32x3_unity_stride.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_bf16_s16816fprop3d_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/bf16_s16816fprop3d_optimized_bf16/all_sm80_bf16_s16816fprop3d_optimized_bf16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/bf16_s16816fprop3d_optimized_bf16/cutlass_tensorop_bf16_s16816fprop3d_optimized_bf16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_bf16_s16816wgrad3d_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/bf16_s16816wgrad3d_optimized_bf16/all_sm80_bf16_s16816wgrad3d_optimized_bf16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/bf16_s16816wgrad3d_optimized_bf16/cutlass_tensorop_bf16_s16816wgrad3d_optimized_bf16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_f16_s16816dgrad3d_analytic_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/f16_s16816dgrad3d_analytic_f16/all_sm80_f16_s16816dgrad3d_analytic_f16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/f16_s16816dgrad3d_analytic_f16/cutlass_tensorop_f16_s16816dgrad3d_analytic_f16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_f16_s16816dgrad3d_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/f16_s16816dgrad3d_optimized_f16/all_sm80_f16_s16816dgrad3d_optimized_f16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/f16_s16816dgrad3d_optimized_f16/cutlass_tensorop_f16_s16816dgrad3d_optimized_f16_256x128_32x3_unity_stride.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_f16_s16816fprop3d_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/f16_s16816fprop3d_optimized_f16/all_sm80_f16_s16816fprop3d_optimized_f16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/f16_s16816fprop3d_optimized_f16/cutlass_tensorop_f16_s16816fprop3d_optimized_f16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_f16_s16816wgrad3d_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/f16_s16816wgrad3d_optimized_f16/all_sm80_f16_s16816wgrad3d_optimized_f16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/f16_s16816wgrad3d_optimized_f16/cutlass_tensorop_f16_s16816wgrad3d_optimized_f16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_h16816dgrad3d_analytic


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/h16816dgrad3d_analytic/all_sm80_h16816dgrad3d_analytic_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/h16816dgrad3d_analytic/cutlass_tensorop_h16816dgrad3d_analytic_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_h16816dgrad3d_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/h16816dgrad3d_optimized/all_sm80_h16816dgrad3d_optimized_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/h16816dgrad3d_optimized/cutlass_tensorop_h16816dgrad3d_optimized_256x128_32x3_unity_stride.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_h16816fprop3d_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/h16816fprop3d_optimized/all_sm80_h16816fprop3d_optimized_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/h16816fprop3d_optimized/cutlass_tensorop_h16816fprop3d_optimized_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_h16816wgrad3d_optimized


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/h16816wgrad3d_optimized/all_sm80_h16816wgrad3d_optimized_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/h16816wgrad3d_optimized/cutlass_tensorop_h16816wgrad3d_optimized_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_s16816dgrad3d_analytic_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816dgrad3d_analytic_bf16/all_sm80_s16816dgrad3d_analytic_bf16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816dgrad3d_analytic_bf16/cutlass_tensorop_s16816dgrad3d_analytic_bf16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_s16816dgrad3d_analytic_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816dgrad3d_analytic_f16/all_sm80_s16816dgrad3d_analytic_f16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816dgrad3d_analytic_f16/cutlass_tensorop_s16816dgrad3d_analytic_f16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_s16816dgrad3d_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816dgrad3d_optimized_bf16/all_sm80_s16816dgrad3d_optimized_bf16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816dgrad3d_optimized_bf16/cutlass_tensorop_s16816dgrad3d_optimized_bf16_256x128_32x3_unity_stride.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_s16816dgrad3d_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816dgrad3d_optimized_f16/all_sm80_s16816dgrad3d_optimized_f16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816dgrad3d_optimized_f16/cutlass_tensorop_s16816dgrad3d_optimized_f16_256x128_32x3_unity_stride.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_s16816fprop3d_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816fprop3d_optimized_bf16/all_sm80_s16816fprop3d_optimized_bf16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816fprop3d_optimized_bf16/cutlass_tensorop_s16816fprop3d_optimized_bf16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_s16816fprop3d_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816fprop3d_optimized_f16/all_sm80_s16816fprop3d_optimized_f16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816fprop3d_optimized_f16/cutlass_tensorop_s16816fprop3d_optimized_f16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_s16816wgrad3d_optimized_bf16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816wgrad3d_optimized_bf16/all_sm80_s16816wgrad3d_optimized_bf16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816wgrad3d_optimized_bf16/cutlass_tensorop_s16816wgrad3d_optimized_bf16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX conv3d_sm80_s16816wgrad3d_optimized_f16


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816wgrad3d_optimized_f16/all_sm80_s16816wgrad3d_optimized_f16_conv3d_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/conv3d/80/s16816wgrad3d_optimized_f16/cutlass_tensorop_s16816wgrad3d_optimized_f16_256x128_32x3.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_c1688herk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688herk/all_sm80_c1688herk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688herk/cutlass_tensorop_c1688herk_128x64_16x4_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688herk/cutlass_tensorop_c1688herk_128x64_16x4_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688herk/cutlass_tensorop_c1688herk_128x64_16x4_h_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688herk/cutlass_tensorop_c1688herk_128x64_16x4_h_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_c1688syrk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688syrk/all_sm80_c1688syrk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688syrk/cutlass_tensorop_c1688syrk_128x64_16x4_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688syrk/cutlass_tensorop_c1688syrk_128x64_16x4_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688syrk/cutlass_tensorop_c1688syrk_128x64_16x4_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688syrk/cutlass_tensorop_c1688syrk_128x64_16x4_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_c1688tf32herk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32herk/all_sm80_c1688tf32herk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32herk/cutlass_tensorop_c1688tf32herk_128x64_16x4_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32herk/cutlass_tensorop_c1688tf32herk_128x64_16x4_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32herk/cutlass_tensorop_c1688tf32herk_128x64_16x4_h_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32herk/cutlass_tensorop_c1688tf32herk_128x64_16x4_h_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_c1688tf32syrk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32syrk/all_sm80_c1688tf32syrk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32syrk/cutlass_tensorop_c1688tf32syrk_128x64_16x4_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32syrk/cutlass_tensorop_c1688tf32syrk_128x64_16x4_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32syrk/cutlass_tensorop_c1688tf32syrk_128x64_16x4_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/c1688tf32syrk/cutlass_tensorop_c1688tf32syrk_128x64_16x4_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_d884syrk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/d884syrk/all_sm80_d884syrk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/d884syrk/cutlass_tensorop_d884syrk_128x128_16x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/d884syrk/cutlass_tensorop_d884syrk_128x128_16x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/d884syrk/cutlass_tensorop_d884syrk_128x128_16x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/d884syrk/cutlass_tensorop_d884syrk_128x128_16x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_gz884herk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884herk/all_sm80_gz884herk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884herk/cutlass_tensorop_gz884herk_64x64_8x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884herk/cutlass_tensorop_gz884herk_64x64_8x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884herk/cutlass_tensorop_gz884herk_64x64_8x3_h_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884herk/cutlass_tensorop_gz884herk_64x64_8x3_h_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_gz884syrk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884syrk/all_sm80_gz884syrk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884syrk/cutlass_tensorop_gz884syrk_64x64_8x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884syrk/cutlass_tensorop_gz884syrk_64x64_8x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884syrk/cutlass_tensorop_gz884syrk_64x64_8x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/gz884syrk/cutlass_tensorop_gz884syrk_64x64_8x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_s1688syrk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688syrk/all_sm80_s1688syrk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688syrk/cutlass_tensorop_s1688syrk_256x128_16x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688syrk/cutlass_tensorop_s1688syrk_256x128_16x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688syrk/cutlass_tensorop_s1688syrk_256x128_16x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688syrk/cutlass_tensorop_s1688syrk_256x128_16x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_s1688tf32syrk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688tf32syrk/all_sm80_s1688tf32syrk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688tf32syrk/cutlass_tensorop_s1688tf32syrk_256x128_16x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688tf32syrk/cutlass_tensorop_s1688tf32syrk_256x128_16x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688tf32syrk/cutlass_tensorop_s1688tf32syrk_256x128_16x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/s1688tf32syrk/cutlass_tensorop_s1688tf32syrk_256x128_16x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_z884herk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884herk/all_sm80_z884herk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884herk/cutlass_tensorop_z884herk_128x64_8x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884herk/cutlass_tensorop_z884herk_128x64_8x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884herk/cutlass_tensorop_z884herk_128x64_8x3_h_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884herk/cutlass_tensorop_z884herk_128x64_8x3_h_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_k_sm80_z884syrk


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884syrk/all_sm80_z884syrk_rank_k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884syrk/cutlass_tensorop_z884syrk_128x64_8x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884syrk/cutlass_tensorop_z884syrk_128x64_8x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884syrk/cutlass_tensorop_z884syrk_128x64_8x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_k/80/z884syrk/cutlass_tensorop_z884syrk_128x64_8x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_c1688her2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688her2k/all_sm80_c1688her2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688her2k/cutlass_tensorop_c1688her2k_128x64_16x4_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688her2k/cutlass_tensorop_c1688her2k_128x64_16x4_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688her2k/cutlass_tensorop_c1688her2k_128x64_16x4_h_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688her2k/cutlass_tensorop_c1688her2k_128x64_16x4_h_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_c1688syr2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688syr2k/all_sm80_c1688syr2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688syr2k/cutlass_tensorop_c1688syr2k_128x64_16x4_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688syr2k/cutlass_tensorop_c1688syr2k_128x64_16x4_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688syr2k/cutlass_tensorop_c1688syr2k_128x64_16x4_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688syr2k/cutlass_tensorop_c1688syr2k_128x64_16x4_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_c1688tf32her2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32her2k/all_sm80_c1688tf32her2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32her2k/cutlass_tensorop_c1688tf32her2k_128x64_16x4_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32her2k/cutlass_tensorop_c1688tf32her2k_128x64_16x4_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32her2k/cutlass_tensorop_c1688tf32her2k_128x64_16x4_h_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32her2k/cutlass_tensorop_c1688tf32her2k_128x64_16x4_h_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_c1688tf32syr2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32syr2k/all_sm80_c1688tf32syr2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32syr2k/cutlass_tensorop_c1688tf32syr2k_128x64_16x4_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32syr2k/cutlass_tensorop_c1688tf32syr2k_128x64_16x4_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32syr2k/cutlass_tensorop_c1688tf32syr2k_128x64_16x4_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/c1688tf32syr2k/cutlass_tensorop_c1688tf32syr2k_128x64_16x4_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_d884syr2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/d884syr2k/all_sm80_d884syr2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/d884syr2k/cutlass_tensorop_d884syr2k_128x128_16x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/d884syr2k/cutlass_tensorop_d884syr2k_128x128_16x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/d884syr2k/cutlass_tensorop_d884syr2k_128x128_16x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/d884syr2k/cutlass_tensorop_d884syr2k_128x128_16x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_gz884her2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884her2k/all_sm80_gz884her2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884her2k/cutlass_tensorop_gz884her2k_64x64_8x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884her2k/cutlass_tensorop_gz884her2k_64x64_8x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884her2k/cutlass_tensorop_gz884her2k_64x64_8x3_h_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884her2k/cutlass_tensorop_gz884her2k_64x64_8x3_h_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_gz884syr2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884syr2k/all_sm80_gz884syr2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884syr2k/cutlass_tensorop_gz884syr2k_64x64_8x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884syr2k/cutlass_tensorop_gz884syr2k_64x64_8x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884syr2k/cutlass_tensorop_gz884syr2k_64x64_8x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/gz884syr2k/cutlass_tensorop_gz884syr2k_64x64_8x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_s1688syr2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688syr2k/all_sm80_s1688syr2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688syr2k/cutlass_tensorop_s1688syr2k_256x128_16x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688syr2k/cutlass_tensorop_s1688syr2k_256x128_16x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688syr2k/cutlass_tensorop_s1688syr2k_256x128_16x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688syr2k/cutlass_tensorop_s1688syr2k_256x128_16x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_s1688tf32syr2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688tf32syr2k/all_sm80_s1688tf32syr2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688tf32syr2k/cutlass_tensorop_s1688tf32syr2k_256x128_16x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688tf32syr2k/cutlass_tensorop_s1688tf32syr2k_256x128_16x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688tf32syr2k/cutlass_tensorop_s1688tf32syr2k_256x128_16x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/s1688tf32syr2k/cutlass_tensorop_s1688tf32syr2k_256x128_16x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_z884her2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884her2k/all_sm80_z884her2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884her2k/cutlass_tensorop_z884her2k_128x64_8x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884her2k/cutlass_tensorop_z884her2k_128x64_8x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884her2k/cutlass_tensorop_z884her2k_128x64_8x3_h_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884her2k/cutlass_tensorop_z884her2k_128x64_8x3_h_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX rank_2k_sm80_z884syr2k


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884syr2k/all_sm80_z884syr2k_rank_2k_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884syr2k/cutlass_tensorop_z884syr2k_128x64_8x3_n_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884syr2k/cutlass_tensorop_z884syr2k_128x64_8x3_n_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884syr2k/cutlass_tensorop_z884syr2k_128x64_8x3_t_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/rank_2k/80/z884syr2k/cutlass_tensorop_z884syr2k_128x64_8x3_t_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX trmm_sm80_c1688tf32trmm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/all_sm80_c1688tf32trmm_trmm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_nn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_cn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_nn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_cn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_nn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_cn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_nn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_cn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_nn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_cn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_nn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_cn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_nn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_cn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_nn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_cn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_tn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_hn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_tn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_hn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_tn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_hn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_tn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_hn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_tn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_hn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_tn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_hn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_tn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_hn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_tn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688tf32trmm/cutlass_tensorop_c1688tf32trmm_128x64_16x4_hn_rs_u_un_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX trmm_sm80_c1688trmm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/all_sm80_c1688trmm_trmm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_nn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_cn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_nn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_cn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_nn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_cn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_nn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_cn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_nn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_cn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_nn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_cn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_nn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_cn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_nn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_cn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_tn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_hn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_tn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_hn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_tn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_hn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_tn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_hn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_tn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_hn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_tn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_hn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_tn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_hn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_tn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/c1688trmm/cutlass_tensorop_c1688trmm_128x64_16x4_hn_rs_u_un_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX trmm_sm80_d884trmm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/all_sm80_d884trmm_trmm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_nn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/d884trmm/cutlass_tensorop_d884trmm_128x128_16x3_tn_rs_u_un_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX trmm_sm80_gz884trmm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/all_sm80_gz884trmm_trmm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_nn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_cn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_nn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_cn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_nn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_cn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_nn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_cn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_nn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_cn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_nn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_cn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_nn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_cn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_nn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_cn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_tn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_hn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_tn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_hn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_tn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_hn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_tn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_hn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_tn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_hn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_tn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_hn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_tn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_hn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_tn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/gz884trmm/cutlass_tensorop_gz884trmm_64x64_8x3_hn_rs_u_un_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX trmm_sm80_s1688tf32trmm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/all_sm80_s1688tf32trmm_trmm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_nn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_nn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_nn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_nn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_nn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_nn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_nn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_nn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_tn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_tn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_tn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_tn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_tn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_tn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_tn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688tf32trmm/cutlass_tensorop_s1688tf32trmm_256x128_16x3_tn_rs_u_un_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX trmm_sm80_s1688trmm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/all_sm80_s1688trmm_trmm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_nn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_nn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_nn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_nn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_nn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_nn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_nn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_nn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_tn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_tn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_tn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_tn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_tn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_tn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_tn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/s1688trmm/cutlass_tensorop_s1688trmm_256x128_16x3_tn_rs_u_un_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX trmm_sm80_z884trmm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/all_sm80_z884trmm_trmm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_nn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_cn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_nn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_cn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_nn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_cn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_nn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_cn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_nn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_cn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_nn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_cn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_nn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_cn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_nn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_cn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_tn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_hn_ls_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_tn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_hn_ls_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_tn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_hn_ls_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_tn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_hn_ls_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_tn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_hn_rs_l_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_tn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_hn_rs_l_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_tn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_hn_rs_u_nu_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_tn_rs_u_un_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/trmm/80/z884trmm/cutlass_tensorop_z884trmm_128x64_8x3_hn_rs_u_un_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_c1688hemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688hemm/all_sm80_c1688hemm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688hemm/cutlass_tensorop_c1688hemm_128x64_16x4_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688hemm/cutlass_tensorop_c1688hemm_128x64_16x4_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688hemm/cutlass_tensorop_c1688hemm_128x64_16x4_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688hemm/cutlass_tensorop_c1688hemm_128x64_16x4_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_c1688symm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688symm/all_sm80_c1688symm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688symm/cutlass_tensorop_c1688symm_128x64_16x4_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688symm/cutlass_tensorop_c1688symm_128x64_16x4_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688symm/cutlass_tensorop_c1688symm_128x64_16x4_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688symm/cutlass_tensorop_c1688symm_128x64_16x4_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_c1688tf32hemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32hemm/all_sm80_c1688tf32hemm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32hemm/cutlass_tensorop_c1688tf32hemm_128x64_16x4_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32hemm/cutlass_tensorop_c1688tf32hemm_128x64_16x4_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32hemm/cutlass_tensorop_c1688tf32hemm_128x64_16x4_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32hemm/cutlass_tensorop_c1688tf32hemm_128x64_16x4_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_c1688tf32symm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32symm/all_sm80_c1688tf32symm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32symm/cutlass_tensorop_c1688tf32symm_128x64_16x4_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32symm/cutlass_tensorop_c1688tf32symm_128x64_16x4_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32symm/cutlass_tensorop_c1688tf32symm_128x64_16x4_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/c1688tf32symm/cutlass_tensorop_c1688tf32symm_128x64_16x4_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_d884symm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/d884symm/all_sm80_d884symm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/d884symm/cutlass_tensorop_d884symm_128x128_16x3_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/d884symm/cutlass_tensorop_d884symm_128x128_16x3_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/d884symm/cutlass_tensorop_d884symm_128x128_16x3_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/d884symm/cutlass_tensorop_d884symm_128x128_16x3_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_gz884hemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884hemm/all_sm80_gz884hemm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884hemm/cutlass_tensorop_gz884hemm_64x64_8x3_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884hemm/cutlass_tensorop_gz884hemm_64x64_8x3_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884hemm/cutlass_tensorop_gz884hemm_64x64_8x3_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884hemm/cutlass_tensorop_gz884hemm_64x64_8x3_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_gz884symm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884symm/all_sm80_gz884symm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884symm/cutlass_tensorop_gz884symm_64x64_8x3_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884symm/cutlass_tensorop_gz884symm_64x64_8x3_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884symm/cutlass_tensorop_gz884symm_64x64_8x3_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/gz884symm/cutlass_tensorop_gz884symm_64x64_8x3_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_s1688symm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688symm/all_sm80_s1688symm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688symm/cutlass_tensorop_s1688symm_256x128_16x3_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688symm/cutlass_tensorop_s1688symm_256x128_16x3_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688symm/cutlass_tensorop_s1688symm_256x128_16x3_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688symm/cutlass_tensorop_s1688symm_256x128_16x3_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_s1688tf32symm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688tf32symm/all_sm80_s1688tf32symm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688tf32symm/cutlass_tensorop_s1688tf32symm_256x128_16x3_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688tf32symm/cutlass_tensorop_s1688tf32symm_256x128_16x3_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688tf32symm/cutlass_tensorop_s1688tf32symm_256x128_16x3_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/s1688tf32symm/cutlass_tensorop_s1688tf32symm_256x128_16x3_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_z884hemm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884hemm/all_sm80_z884hemm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884hemm/cutlass_tensorop_z884hemm_128x64_8x3_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884hemm/cutlass_tensorop_z884hemm_128x64_8x3_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884hemm/cutlass_tensorop_z884hemm_128x64_8x3_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884hemm/cutlass_tensorop_z884hemm_128x64_8x3_n_rs_u_align1.cu
)
cutlass_add_cutlass_library(
      SUFFIX symm_sm80_z884symm


    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884symm/all_sm80_z884symm_symm_operations.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884symm/cutlass_tensorop_z884symm_128x64_8x3_n_ls_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884symm/cutlass_tensorop_z884symm_128x64_8x3_n_ls_u_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884symm/cutlass_tensorop_z884symm_128x64_8x3_n_rs_l_align1.cu
    /home/m.gpuprog/cutlass_project/CUTLASS/build/tools/library/generated/symm/80/z884symm/cutlass_tensorop_z884symm_128x64_8x3_n_rs_u_align1.cu
)
