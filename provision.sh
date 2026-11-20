#!/usr/bin/env bash
set -e
CKPT=/opt/ComfyUI/models/checkpoints
mkdir -p "$CKPT"
if [ -s "$CKPT/sd_xl_base_1.0.safetensors" ]; then
  exit 0
fi
wget -q -O "$CKPT/sd_xl_base_1.0.safetensors" \
  https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
ls -lh "$CKPT"
