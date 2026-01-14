#!/bin/bash

# Keep the good 128px and 48px versions
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# For 32px and 16px - create simplified, high contrast versions
# Strategy: Add a solid colored background circle and make the star white/light

# 32x32 - Solid background with simplified star
convert /home/next/Pictures/aiche/icon/app-icon-32.png \
  \( -size 32x32 xc:none -fill "#FF6B35" -draw "circle 16,16 16,2" \) \
  -compose DstOver -composite \
  -negate \
  -level 0%,100%,2.0 \
  icon-32.png

# 16x16 - Maximum simplification with solid background
convert /home/next/Pictures/aiche/icon/app-icon-32.png \
  -resize 16x16 \
  \( -size 16x16 xc:none -fill "#FF6B35" -draw "circle 8,8 8,1" \) \
  -compose DstOver -composite \
  -negate \
  -level 0%,100%,2.2 \
  icon-16.png

echo "Optimized small icons created!"
