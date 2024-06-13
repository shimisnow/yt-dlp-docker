# yt-dlp Docker

This project is a Docker container for the repository [yt-dlp](https://github.com/yt-dlp/yt-dlp)

This is only a Docker image that uses the yt-dlp project without any modification.

## Key features

- It has ffmpeg and yt-dlp installed and configured
- Can read multiple urls from a text file and download all files
- Can split the video in chapters
- Can store the thumbnail, chapters info and subtitles in mp4/mkv files

## How to use it

First, build the image `yt-dlp-docker:latest`:

```sh
docker compose build image
```

Second, put the youtube urls into the file `./source/source.txt` (one per line)

Example:

```txt
https://www.youtube.com/watch?v=ApMrILhTulI
```

Third, run the container for the desired operation:

```sh
docker compose up download
docker compose up download-mp3
docker compose up split-chapters
```

The files will be downloaded to the `/export` directory.
