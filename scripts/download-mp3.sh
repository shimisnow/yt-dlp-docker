#!/bin/bash

options=(
  '--split-chapters'
  '--format worst'
  '--extract-audio'
  "--audio-format $AUDIO_FORMAT"
  "--audio-quality $AUDIO_QUALITY"
  '--write-thumbnail'
  '--convert-thumbnails jpg'
)

configs=$(printf "%s " "${options[@]}")

./yt-dlp/yt-dlp $configs --paths /export --batch-file /source/source.txt
