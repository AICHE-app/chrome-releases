#!/bin/bash

# Create PROPER outline microphone - clean and simple

# Keep 128px and 48px star
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# 32px - Clean microphone outline
convert -size 32x32 xc:none \
  -stroke "#3C3C3C" -strokewidth 3 -fill none \
  -draw "roundrectangle 11,6 21,18 5,5" \
  -draw "path 'M 8,18 Q 8,26 16,26 Q 24,26 24,18'" \
  -draw "line 16,26 16,30" \
  -draw "line 11,30 21,30" \
  icon-32.png

# 16px - Simple microphone outline  
convert -size 16x16 xc:none \
  -stroke "#3C3C3C" -strokewidth 2 -fill none \
  -draw "roundrectangle 6,3 10,9 2,2" \
  -draw "path 'M 4,9 Q 4,13 8,13 Q 12,13 12,9'" \
  -draw "line 8,13 8,15" \
  -draw "line 6,15 10,15" \
  icon-16.png

echo "Proper microphone created!"
