#!/bin/bash

# Create AICHE star icon optimized for toolbar
# Using a bold, simplified 4-point star with rounded edges

# 128x128 - High detail star
convert -size 128x128 xc:none \
  -fill "#FF6B35" \
  -draw "path 'M 64,8 L 80,56 L 120,56 L 88,80 L 104,120 L 64,96 L 24,120 L 40,80 L 8,56 L 48,56 Z'" \
  \( +clone -background black -shadow 80x3+0+0 \) +swap -background none -layers merge +repage \
  icon-128.png

# 48x48 - Simplified star with thicker points
convert -size 48x48 xc:none \
  -fill "#FF6B35" \
  -draw "path 'M 24,3 L 30,21 L 45,21 L 33,30 L 39,45 L 24,36 L 9,45 L 15,30 L 3,21 L 18,21 Z'" \
  icon-48.png

# 32x32 - Bold star optimized for toolbar visibility
convert -size 32x32 xc:none \
  -fill "#FF6B35" \
  -draw "path 'M 16,2 L 20,14 L 30,14 L 22,20 L 26,30 L 16,24 L 6,30 L 10,20 L 2,14 L 12,14 Z'" \
  icon-32.png

# 16x16 - Maximum bold, clear star shape
convert -size 16x16 xc:none \
  -fill "#FF6B35" \
  -draw "path 'M 8,1 L 10,7 L 15,7 L 11,10 L 13,15 L 8,12 L 3,15 L 5,10 L 1,7 L 6,7 Z'" \
  icon-16.png

echo "Star icons created!"
