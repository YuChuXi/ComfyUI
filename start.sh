#!/bin/bash
#unset no_proxy http_proxy https_proxy all_proxy
#unset NO_PROXY HTTP_PROXY HTTPS_PROXY ALL_PROXY
source $PWD/.venv/bin/activate
python $PWD/main.py --port 48189 --listen 0.0.0.0 \
    --force-fp16 --fp16-unet --bf16-vae --fp16-text-enc \
    --preview-method taesd --use-split-cross-attention \
    --lowvram --verbose --fast \
    #--tls-keyfile key.pem --tls-certfile cert.pem

