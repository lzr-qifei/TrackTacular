srun -p ec529f6c-0264-4219-98c7-52d0c710f715 --workspace-id f7545db2-737e-46cc-a8c8-2a266efc6616 \
 -N 1 -f pt -d StandAlone -r N5IP.nn.I90.1 -j Track_train  \
bash -c 'export NCCL_IB_GID_INDEX=5 && export OMP_NUM_THREADS=1 && export PATH=/home/mnt/lustre/share/lishuhuai/tools/gcc-5.4/bin:$PATH \
&& source activate /home/mnt/lizirui/envs/TrackTacular   && pip install /home/mnt/lizirui/mmcv-2.2.0-cp38-cp38-manylinux1_x86_64.whl'
     