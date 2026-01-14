#!/bin/bash

# Create a bold microphone icon optimized for small sizes
# Using SVG path commands with ImageMagick

# 128x128 - Full detail version
convert -size 128x128 xc:none \
  -fill "#3B82F6" \
  -draw "roundrectangle 44,30 84,80 8,8" \
  -draw "ellipse 64,100 26,16 0,360" \
  -draw "path 'M 64,116 L 64,140'" \
  -draw "roundrectangle 50,136 78,144 4,4" \
  -strokewidth 8 -stroke "#3B82F6" -fill none \
  -draw "path 'M 36,90 Q 36,116 64,116 Q 92,116 92,90'" \
  icon-128.png

# 48x48 - Simplified version
convert -size 48x48 xc:none \
  -fill "#3B82F6" \
  -draw "roundrectangle 16,11 32,30 3,3" \
  -draw "ellipse 24,37 10,6 0,360" \
  -draw "path 'M 24,43 L 24,52'" \
  -draw "roundrectangle 19,51 29,54 2,2" \
  -strokewidth 3 -stroke "#3B82F6" -fill none \
  -draw "path 'M 13,34 Q 13,43 24,43 Q 35,43 35,34'" \
  icon-48.png

# 32x32 - Bold and clear for toolbar
convert -size 32x32 xc:none \
  -fill "#3B82F6" \
  -draw "roundrectangle 11,7 21,20 2,2" \
  -draw "ellipse 16,25 7,4 0,360" \
  -draw "path 'M 16,29 L 16,35'" \
  -draw "roundrectangle 13,34 19,36 1,1" \
  -strokewidth 2 -stroke "#3B82F6" -fill none \
  -draw "path 'M 9,23 Q 9,29 16,29 Q 23,29 23,23'" \
  icon-32.png

# 16x16 - Maximum simplification, bold strokes
convert -size 16x16 xc:none \
  -fill "#3B82F6" \
  -draw "roundrectangle 5,3 11,10 1,1" \
  -draw "ellipse 8,12 4,2 0,360" \
  -draw "line 8,14 8,17" \
  -strokewidth 1 -stroke "#3B82F6" -fill none \
  -draw "path 'M 4,11 Q 4,14 8,14 Q 12,14 12,11'" \
  icon-16.png

echo "Icons created successfully!"
