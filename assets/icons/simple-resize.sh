#!/bin/bash

# Just do CLEAN resizes - no filters, no bullshit
# Use Lanczos for best quality downscaling

# 128px - direct copy
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png

# 48px - direct copy
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# 32px - direct copy
cp /home/next/Pictures/aiche/icon/app-icon-32.png icon-32.png

# 16px - high quality resize from 32px with sharpening
convert /home/next/Pictures/aiche/icon/app-icon-32.png \
  -filter Lanczos \
  -resize 16x16 \
  -sharpen 0x1 \
  icon-16.png

echo "Clean icons copied!"
