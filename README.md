# Youtube-dl

Run youtube-dl inside a docker container.

[Official Documentation](https://github.com/ytdl-org/youtube-dl)

## Requirements

- [Install Docker](https://docs.docker.com/engine/installation/)
- [Install Docker Compose](https://docs.docker.com/compose/install/)

## Docker Hub

```sh
# Pull Docker Image From Docker Hub
docker pull mirakurun/youtube-dl
```

## Usage

### Option-1: Docker CLI
<br />

```sh
# Build Docker Image 
docker build -t youtube-dl .

# Download Video
docker run --rm -v $(pwd)/youtube-dl.conf:/etc/youtube-dl.conf:ro -v $(pwd)/downloads:/app/downloads mirakurun/youtube-dl -i -f https://www.youtube.com/...

# Extract Audio
docker run --rm -v $(pwd)/youtube-dl.conf:/etc/youtube-dl.conf:ro -v $(pwd)/downloads:/app/downloads mirakurun/youtube-dl -i -x --audio-format m4a --audio-quality 0 https://www.youtube.com/...
```


### Option-2: Docker Compose
<br />

```sh
# Download Video
docker-compose run --rm youtube-dl -i -f https://www.youtube.com/...

# Extract Audio
docker-compose run --rm youtube-dl -i -x --audio-format m4a --audio-quality 0 https://www.youtube.com/...
## Specify audio format: "best", "aac","flac", "mp3", "m4a", "opus", "vorbis", or "wav"; "best" by default; No effect without -x
```

## Configuration

[Configuration Documentation](https://github.com/ytdl-org/youtube-dl#configuration)
