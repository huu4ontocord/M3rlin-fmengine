deepspeed --num_gpus 4 --num_nodes 1 cli/lora_train.py \
    --output_dir .cache/models \
    --init_ckpt /mnt/scratch/xiayao/cache/pretrained_weights/llama-2-7b-r2 \
    --data_path .cache/data/prompt.jsonl \
    --max_seq_len 1024 \
    --train_steps 1000 \
    --eval_steps 10 \
    --save_steps 100 \
    --log_steps 1 \
    --pipe_parallel_size 4 \
    --model_parallel_size 1 \
    --use_flash_attn true \
    --deepspeed_config ./configs/llama.json