#!/bin/bash
#unset no_proxy http_proxy https_proxy all_proxy
#unset NO_PROXY HTTP_PROXY HTTPS_PROXY ALL_PROXY
#export PYTORCH_HIP_ALLOC_CONF=expandable_segments:True
#export FLASH_ATTENTION_TRITON_AMD_ENABLE=TRUE
#export HIPDNN_BENCHMARK=1
export CUDNN_BENCHMARK=1
#export MIOPEN_FIND_MODE=2
#export HSA_OVERRIDE_GFX_VERSION=11.0.0
#export ROCR_VISIBLE_DEVICES=0
#export GPU_DEVICE_ORDINAL=0

python $PWD/main.py --port 48189 --listen 0.0.0.0 \
    --preview-method taesd \
    --novram \
    --verbose DEBUG \
    --tls-keyfile key.pem --tls-certfile cert.pem \
    --async-offload \
    $@
    #--use-split-cross-attention \
    #--use-pytorch-cross-attention \
    #--use-flash-attention \
    #--disable-xformer \
    #--use-quad-cross-attention \
    #--use-sage-attention \

