#!/bin/bash

# Create outline microphone icons like the reference image

# Keep 128px and 48px star
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# 32px - Clean outline microphone
convert -size 32x32 xc:none \
  -stroke "#E8E8E8" -strokewidth 3 -fill none \
  -draw "roundrectangle 12,8 20,20 4,4" \
  -draw "line 8,20 8,22" \
  -draw "line 24,20 24,22" \
  -draw "path 'M 8,22 Q 8,28 16,28 Q 24,28 24,22'" \
  -draw "line 16,28 16,31" \
  -draw "line 12,31 20,31" \
  icon-32.png

# 16px - Simplified outline microphone
convert -size 16x16 xc:none \
  -stroke "#E8E8E8" -strokewidth 2 -fill none \
  -draw "roundrectangle 6,4 10,10 2,2" \
  -draw "line 4,10 4,11" \
  -draw "line 12,10 12,11" \
  -draw "path 'M 4,11 Q 4,14 8,14 Q 12,14 12,11'" \
  -draw "line 8,14 8,16" \
  -draw "line 6,16 10,16" \
  icon-16.png

echo "Outline microphone icons created!"
