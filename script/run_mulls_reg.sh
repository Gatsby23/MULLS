#!/bin/sh
#########################################################################################
#                     MULLS pairwise point cloud registration                           #
############################# part to configure (down)###################################

#data path (*.pcd, *.las, *.ply, *.txt, *.h5)
# tpc_path=xxxx/dummy_target_point_cloud.xxx
# spc_path=xxxx/dummy_source_point_cloud.xxx
# opc_path=xxxx/dummy_transformed_source_point_cloud.xxx

#demo example
tpc_path=./demo_data/pcd/000000.pcd
spc_path=./demo_data/pcd/000009.pcd
opc_path=./demo_data/result/000009_reg.pcd

#run
#gdb --args \
./bin/mulls_reg \
--colorlogtostderr=true \
-stderrthreshold 0 \
-log_dir ./log/test \
--v=10 \
--point_cloud_1_path=${tpc_path} \
--point_cloud_2_path=${spc_path} \
--output_point_cloud_path=${opc_path} \
--realtime_viewer_on=true \
--cloud_1_down_res=0.00 \
--cloud_2_down_res=0.00 \
--pca_neighbor_radius=1.0 \
--pca_neighbor_count=50 \
--gf_grid_size=2.0 \
--gf_in_grid_h_thre=0.25 \
--gf_neigh_grid_h_thre=1.2 \
--gf_ground_down_rate=10 \
--gf_nonground_down_rate=3 \
--linearity_thre=0.65 \
--planarity_thre=0.65 \
--curvature_thre=0.15 \
--reciprocal_corr_on=true \
--corr_dis_thre=2.5 \
--converge_tran=0.0005 \
--converge_rot_d=0.002 \
--reg_max_iter_num=20 \
--teaser_on=true \
