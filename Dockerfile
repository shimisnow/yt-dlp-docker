FROM ubuntu:24.04

RUN apt-get update -qq

RUN apt-get install -y ffmpeg

RUN apt-get install -y wget

RUN mkdir -p /yt-dlp

RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /yt-dlp/yt-dlp

RUN chmod a+rx /yt-dlp/yt-dlp
