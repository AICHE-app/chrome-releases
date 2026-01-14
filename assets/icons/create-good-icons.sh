#!/bin/bash

# Create professional microphone icons with proper proportions and anti-aliasing

# 128x128 - High resolution
convert -size 128x128 xc:none \
  -fill "#2563EB" \
  -draw "roundrectangle 48,32 80,76 12,12" \
  -fill "#2563EB" \
  -draw "ellipse 64,84 20,12 180,360" \
  -fill "#2563EB" \
  -draw "rectangle 60,84 68,108" \
  -draw "roundrectangle 48,104 80,112 8,8" \
  -stroke "#2563EB" -strokewidth 6 -fill none \
  -draw "path 'M 40,76 Q 40,96 64,96 Q 88,96 88,76'" \
  icon-128.png

# 48x48 - Medium size
convert -size 48x48 xc:none \
  -fill "#2563EB" \
  -draw "roundrectangle 18,12 30,28 4,4" \
  -fill "#2563EB" \
  -draw "ellipse 24,31 8,5 180,360" \
  -fill "#2563EB" \
  -draw "rectangle 22,31 26,40" \
  -draw "roundrectangle 18,39 30,42 3,3" \
  -stroke "#2563EB" -strokewidth 2.5 -fill none \
  -draw "path 'M 15,28 Q 15,36 24,36 Q 33,36 33,28'" \
  icon-48.png

# 32x32 - Toolbar optimized
convert -size 32x32 xc:none \
  -fill "#2563EB" \
  -draw "roundrectangle 12,8 20,18 2,2" \
  -fill "#2563EB" \
  -draw "ellipse 16,20 5,3 180,360" \
  -fill "#2563EB" \
  -draw "rectangle 15,20 17,26" \
  -draw "roundrectangle 12,26 20,28 2,2" \
  -stroke "#2563EB" -strokewidth 2 -fill none \
  -draw "path 'M 10,18 Q 10,24 16,24 Q 22,24 22,18'" \
  icon-32.png

# 16x16 - Smallest, most simplified
convert -size 16x16 xc:none \
  -fill "#2563EB" \
  -draw "roundrectangle 6,4 10,9 1,1" \
  -draw "ellipse 8,10 3,2 180,360" \
  -draw "rectangle 7,10 9,13" \
  -draw "rectangle 6,13 10,14" \
  -stroke "#2563EB" -strokewidth 1 -fill none \
  -draw "path 'M 5,9 Q 5,12 8,12 Q 11,12 11,9'" \
  icon-16.png

echo "Professional icons created!"
