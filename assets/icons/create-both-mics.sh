#!/bin/bash

# Create both normal and recording (red) microphone icons

# Keep 128px and 48px star
cp /home/next/Pictures/aiche/icon/app-icon-128.png icon-128.png
cp /home/next/Pictures/aiche/icon/app-icon-48.png icon-48.png

# Normal (dark) microphone - 32px
convert -size 32x32 xc:none \
  -fill "#3C3C3C" \
  -draw "roundrectangle 10,5 22,20 6,6" \
  -stroke "#3C3C3C" -strokewidth 3 -fill none \
  -draw "path 'M 6,20 Q 6,28 16,28 Q 26,28 26,20'" \
  -fill "#3C3C3C" \
  -draw "rectangle 15,28 17,31" \
  -draw "rectangle 10,31 22,33" \
  icon-32.png

# Normal (dark) microphone - 16px
convert -size 16x16 xc:none \
  -fill "#3C3C3C" \
  -draw "roundrectangle 5,2 11,10 3,3" \
  -stroke "#3C3C3C" -strokewidth 2 -fill none \
  -draw "path 'M 3,10 Q 3,14 8,14 Q 13,14 13,10'" \
  -fill "#3C3C3C" \
  -draw "rectangle 7,14 9,16" \
  -draw "rectangle 5,16 11,17" \
  icon-16.png

# Recording (red) microphone - 32px
convert -size 32x32 xc:none \
  -fill "#EF4444" \
  -draw "roundrectangle 10,5 22,20 6,6" \
  -stroke "#EF4444" -strokewidth 3 -fill none \
  -draw "path 'M 6,20 Q 6,28 16,28 Q 26,28 26,20'" \
  -fill "#EF4444" \
  -draw "rectangle 15,28 17,31" \
  -draw "rectangle 10,31 22,33" \
  icon-recording-32.png

# Recording (red) microphone - 16px
convert -size 16x16 xc:none \
  -fill "#EF4444" \
  -draw "roundrectangle 5,2 11,10 3,3" \
  -stroke "#EF4444" -strokewidth 2 -fill none \
  -draw "path 'M 3,10 Q 3,14 8,14 Q 13,14 13,10'" \
  -fill "#EF4444" \
  -draw "rectangle 7,14 9,16" \
  -draw "rectangle 5,16 11,17" \
  icon-recording-16.png

echo "Normal and recording microphone icons created!"
