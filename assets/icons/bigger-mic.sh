#!/bin/bash

# Create BIGGER outline microphone that fills the icon space

# Keep 128px and 48px star
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# 32px - BIGGER microphone filling most of the space
convert -size 32x32 xc:none \
  -stroke "#3C3C3C" -strokewidth 3.5 -fill none \
  -draw "roundrectangle 10,4 22,22 5,5" \
  -draw "line 6,22 6,24" \
  -draw "line 26,22 26,24" \
  -draw "path 'M 6,24 Q 6,30 16,30 Q 26,30 26,24'" \
  -draw "line 16,30 16,33" \
  -draw "line 10,33 22,33" \
  icon-32.png

# 16px - BIGGER simplified microphone
convert -size 16x16 xc:none \
  -stroke "#3C3C3C" -strokewidth 2.5 -fill none \
  -draw "roundrectangle 5,2 11,11 2,2" \
  -draw "line 3,11 3,12" \
  -draw "line 13,11 13,12" \
  -draw "path 'M 3,12 Q 3,15 8,15 Q 13,15 13,12'" \
  -draw "line 8,15 8,17" \
  -draw "line 5,17 11,17" \
  icon-16.png

echo "Bigger microphone icons created!"
