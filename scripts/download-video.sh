#!/bin/bash

options=(
  "--format-sort res:$MAX_VIDEO_RESOLUTION,fps"
  '--remux-video mkv'
  '--embed-thumbnail'
  '--embed-chapters'
  '--embed-subs'
  "--concat-playlist $CONCAT_PLAYLIST"
)

configs=$(printf "%s " "${options[@]}")

./yt-dlp/yt-dlp $configs --paths $OUTPUT_DIRECTORY --batch-file $SOURCE_FILE
