torchrun --nnodes 1 --nproc-per-node 4 --node_rank 0 cli/train.py \
    --output_dir /workspace/.cache/models \
    --init_ckpt /pretrained/tinyllama-2-1b-mp1 \
    --data_path /datasets/qi/ar/task112_asset_simple_sentence_identification.train.jsonl \
    --max_seq_len 128 \
    --train_steps 1000 \
    --eval_steps 10 \
    --save_steps 1000 \
    --log_steps 10 \
    --pipe_parallel_size 4 \
    --model_parallel_size 1 \
    --use_flash_attn true \
    --use_fused_ops true \
    --deepspeed_config ./configs/llama.json