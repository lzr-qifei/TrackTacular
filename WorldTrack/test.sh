srun -p c7e6fad6-4dfa-42ef-af06-b0858c594d44 --workspace-id c75ef8a9-625f-4985-8c14-67b04e72a8c1 \
 -N 1 -f pt -d StandAlone -r N1lS.Ia.I20.1 -j Track_test  \
bash -c ' export OMP_NUM_THREADS=1 \
&& source activate /home/mnt/lizirui/envs/TrackTacular \
&& python /home/mnt/lizirui/TrackTacular/WorldTrack/world_track.py test -c  /home/mnt/lizirui/TrackTacular/WorldTrack/model_weights/bevformer/config.yaml \
    --ckpt /home/mnt/lizirui/TrackTacular/WorldTrack/model_weights/bevformer/model-epoch=39-val_loss=3.82-val_center=1.58.ckpt'



