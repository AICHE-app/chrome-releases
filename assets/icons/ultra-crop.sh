#!/bin/bash

# Keep 128px and 48px as-is
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# ULTRA CROP - star fills almost ENTIRE icon space
# Only 0.5px effective padding

# 32px - resize trimmed image to 31x31, then center in 32x32
convert /home/next/Pictures/aiche/icon/app-icon-128.png \
  -trim +repage \
  -resize 31x31 \
  -background none -gravity center -extent 32x32 \
  -sharpen 0x0.8 \
  icon-32.png

# 16px - resize trimmed image to 15.5x15.5, then center in 16x16
convert /home/next/Pictures/aiche/icon/app-icon-128.png \
  -trim +repage \
  -resize 15.5x15.5 \
  -background none -gravity center -extent 16x16 \
  -sharpen 0x1.0 \
  icon-16.png

echo "ULTRA cropped - star fills entire icon!"
