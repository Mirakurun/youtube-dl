FROM alpine

WORKDIR /app

RUN apk add youtube-dl ffmpeg

COPY ./youtube-dl.conf /etc/youtube-dl.conf

ENTRYPOINT [ "youtube-dl" ]
