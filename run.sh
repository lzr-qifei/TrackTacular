srun -p ec529f6c-0264-4219-98c7-52d0c710f715 --workspace-id f7545db2-737e-46cc-a8c8-2a266efc6616 \
 -N 1 -f pt -d StandAlone -r N5IP.nn.I90.4 -j Track_train  \
bash -c 'export NCCL_IB_GID_INDEX=5 && export NCCL_P2P_DISABLE=1 && export OMP_NUM_THREADS=1 && source activate /home/mnt/lizirui/envs/TrackTacular \
  && python -m torchrun \
  --nproc_per_node 4 \
--nnodes=\${WORLD_SIZE} \
--node_rank=\${RANK} \
--master_addr=\${MASTER_ADDR} \
--master_port=23456 \
 /home/mnt/lizirui/TrackTacular/world_track.py fit -c /home/mnt/lizirui/TrackTacular/WorldTrack/configs/t_multi_gpu.yml \
    -c /home/mnt/lizirui/TrackTacular/WorldTrack/configs/d_multiviewx.yml \
    -c /home/mnt/lizirui/TrackTacular/WorldTrack/configs/m_liftnet.yml --launcher pytorch'

