#!/bin/bash
#unset no_proxy http_proxy https_proxy all_proxy
#unset NO_PROXY HTTP_PROXY HTTPS_PROXY ALL_PROXY
export PYTORCH_HIP_ALLOC_CONF=expandable_segments:True
export FLASH_ATTENTION_TRITON_AMD_ENABLE=TRUE
export HIPDNN_BENCHMARK=1
export CUDNN_BENCHMARK=1
export MIOPEN_FIND_ENFORCE=3


source $PWD/.venv/bin/activate
python $PWD/main.py --port 48189 --listen 0.0.0.0 \
    --fp16-unet --bf16-vae --fp16-text-enc \
    --preview-method taesd \
    --lowvram --verbose DEBUG \
    --tls-keyfile key.pem --tls-certfile cert.pem \
    --use-split-cross-attention \
    --disable-smart-memory \
    --async-offload \

    #--use-flash-attention \
    #--use-pytorch-cross-attention \
    #--use-quad-cross-attention \

