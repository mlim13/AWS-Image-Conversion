#!/bin/bash

WORK_DIR=/tmp/img2video
RESOLUTION=640x360

# check if commands exist
type convert > /dev/null 2>&1 || (echo "[$(date)] imagemagick is not installed" && return 1)
type ffmpeg > /dev/null 2>&1 || (echo "[$(date)] avconv is not installed" && return 1)

function img2video {
local INPUT_DIR=$1
local OUTPUT_FILE=$2

if [ ! -d "$INPUT_DIR" ]; then
echo "[$(date)] No directory $INPUT_DIR exists"
exit 1:
fi

# clean up
rm -f $OUTPUT_FILE
rm -rf $WORK_DIR
mkdir -p $WORK_DIR/morph

# convert images to PNG to avoid potential issues in avconv
echo "[$(date)] convert images in $INPUT_DIR to PNG and store them in $WORK_DIR"
convert $INPUT_DIR/* $WORK_DIR/%05d.png

echo "[$(date)] resize images to $RESOLUTION"
mogrify -resize $RESOLUTION $WORK_DIR/*.png
mogrify -extent $RESOLUTION -gravity Center -fill white $WORK_DIR/*.png

echo "[$(date)] generate a sequence of images in $WORK_DIR/morph"
# A micro instance is likely to fail this process due to lack of swap space
# Use a small instance or add a swap partition (see http://valerio.della-porta.com/node/139)
convert "$WORK_DIR/*.png" -morph 5 "$WORK_DIR/morph/%05d.morph.png"

echo "[$(date)] convert the image sequence to a video $OUTPUT_FILE"
ffmpeg -r 25 -i "$WORK_DIR/morph/%05d.morph.png" -c:v libx264 -pix_fmt yuv420p $OUTPUT_FILE
}

if [ $# -ne 2 ]; then
echo "usage: $(basename $0) input_images_dir output_video_file"
echo "video format is determined by extension (e.g., output.mp4 generates an MP4 video)"
echo "'avconv -formats' shows a list of supported formats"
exit 1;
fi

img2video $1 $2