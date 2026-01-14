#!/bin/bash

# Keep 128px and 48px as-is
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# For small icons - TIGHT crop to remove transparent padding, then resize
# This will make the star fill more of the icon space

# 32px - tight crop and resize
convert /home/next/Pictures/aiche/icon/app-icon-128.png \
  -trim +repage \
  -resize 32x32 \
  -background none -gravity center -extent 32x32 \
  -sharpen 0x0.8 \
  icon-32.png

# 16px - tight crop and resize  
convert /home/next/Pictures/aiche/icon/app-icon-128.png \
  -trim +repage \
  -resize 16x16 \
  -background none -gravity center -extent 16x16 \
  -sharpen 0x1.0 \
  icon-16.png

echo "Tightly cropped icons created!"
