#!/bin/bash

# Create bold microphone icons for toolbar

# Keep 128px star
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png

# Keep 48px star  
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# 32px - Bold microphone
convert -size 32x32 xc:none \
  -fill "#2563EB" \
  -draw "roundrectangle 11,6 21,18 3,3" \
  -draw "ellipse 16,21 6,4 180,360" \
  -draw "rectangle 15,21 17,28" \
  -draw "roundrectangle 11,27 21,30 2,2" \
  -stroke "#2563EB" -strokewidth 2.5 -fill none \
  -draw "path 'M 8,18 Q 8,25 16,25 Q 24,25 24,18'" \
  icon-32.png

# 16px - Simple bold microphone
convert -size 16x16 xc:none \
  -fill "#2563EB" \
  -draw "roundrectangle 5,3 11,9 1,1" \
  -draw "ellipse 8,10 4,2 180,360" \
  -draw "rectangle 7,10 9,14" \
  -draw "roundrectangle 5,13 11,15 1,1" \
  -stroke "#2563EB" -strokewidth 1.5 -fill none \
  -draw "path 'M 3,9 Q 3,13 8,13 Q 13,13 13,9'" \
  icon-16.png

echo "Microphone toolbar icons created!"
