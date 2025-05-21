## Install environment
```bash
conda env create -f environment.yml
```

## Download checkpoints
```bash
mkdir checkpoints && cd checkpoints
git clone https://huggingface.co/xingjianleng/mplug_visual-question-answering_coco_large_en
cd ..
```

## Run evaluation (example)
```bash
conda activate dpg
bash dpg_bench/dist_eval_h5.sh /path/to/dpg_generate.h5 1024 results/dpg_bench_results.txt 4
```
