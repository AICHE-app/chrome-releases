#!/bin/bash

# Create SOLID filled microphone - sharper and clearer at small sizes

# Keep 128px and 48px star
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# 32px - SOLID microphone
convert -size 32x32 xc:none \
  -fill "#3C3C3C" \
  -draw "roundrectangle 11,6 21,19 5,5" \
  -stroke "#3C3C3C" -strokewidth 2.5 -fill none \
  -draw "path 'M 7,19 Q 7,27 16,27 Q 25,27 25,19'" \
  -fill "#3C3C3C" \
  -draw "rectangle 15,27 17,30" \
  -draw "rectangle 11,30 21,32" \
  icon-32.png

# 16px - SOLID microphone
convert -size 16x16 xc:none \
  -fill "#3C3C3C" \
  -draw "roundrectangle 6,3 10,10 2,2" \
  -stroke "#3C3C3C" -strokewidth 1.5 -fill none \
  -draw "path 'M 4,10 Q 4,13 8,13 Q 12,13 12,10'" \
  -fill "#3C3C3C" \
  -draw "rectangle 7,13 9,15" \
  -draw "rectangle 5,15 11,16" \
  icon-16.png

echo "SOLID microphone created!"
