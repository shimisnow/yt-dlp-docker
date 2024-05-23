FROM ubuntu:24.04

RUN apt update -qq

RUN apt install ffmpeg -y

RUN apt install wget -y

RUN mkdir -p /yt-dlp

RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /yt-dlp/yt-dlp

RUN chmod a+rx /yt-dlp/yt-dlp
