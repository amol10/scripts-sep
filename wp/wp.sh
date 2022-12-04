#!/bin/bash

source font.sh

filename=$1
fontsize_q=$2
fontsize_s=$3
template=$3
font_regular=$regular
font_bold=$bold

convert -size 1366x768 xc:gray20 wallpaper.png 
head -n 1 $filename | fold -s -w 100 | magick wallpaper.png -gravity center -fill white -pointsize $fontsize_q -font $font_bold -annotate 0 @-  wallpaper.png
tail -n 1 $filename | magick wallpaper.png -gravity southeast -fill orange -pointsize $fontsize_s -font $font_regular -annotate +200+250 @- wallpaper.png
