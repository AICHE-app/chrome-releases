#!/bin/bash

# Keep 128px and 48px as-is
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# For small icons - MAXIMUM crop, then add just 1-2px padding
# Star should fill almost the entire icon

# 32px - maximum crop with minimal padding
convert /home/next/Pictures/aiche/icon/app-icon-128.png \
  -trim +repage \
  -resize 30x30 \
  -background none -gravity center -extent 32x32 \
  -sharpen 0x0.8 \
  icon-32.png

# 16px - maximum crop with minimal padding
convert /home/next/Pictures/aiche/icon/app-icon-128.png \
  -trim +repage \
  -resize 15x15 \
  -background none -gravity center -extent 16x16 \
  -sharpen 0x1.0 \
  icon-16.png

echo "Maximum cropped icons created!"
