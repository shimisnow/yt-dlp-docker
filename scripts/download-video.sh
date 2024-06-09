#!/bin/bash

options=(
  "--format-sort res:$MAX_VIDEO_RESOLUTION,fps"
  '--embed-thumbnail'
  '--embed-chapters'
  '--embed-subs'
)

configs=$(printf "%s " "${options[@]}")

./yt-dlp/yt-dlp $configs --paths $OUTPUT_DIRECTORY --batch-file $SOURCE_FILE
