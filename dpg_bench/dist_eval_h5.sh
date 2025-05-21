# bash dpg_bench/dist_eval_h5.sh outputs/SANA_1.6B_DPGBench_seed42_guidance4.5_num_inference_steps20_num_images_per_prompt4_batch_size4_resolution1024.h5 1024 results/SANA_1.6B_DPGBench_seed42_guidance4.5_num_inference_steps20_num_images_per_prompt4_batch_size4_resolution1024.json 4
H5_PATH=$1
RESOLUTION=$2
RES_PATH=$3
PIC_NUM=$4

accelerate launch --mixed_precision "fp16" ./dpg_bench/compute_dpg_bench_h5.py \
    --h5-path $H5_PATH \
    --resolution $RESOLUTION \
    --res-path $RES_PATH \
    --pic-num $PIC_NUM \
    --vqa-model mplug \
    --csv ./dpg_bench/dpg_bench.csv
