# drone-bash-plugin

Drone plugin to execution shell script

## Docker

Build the Docker image with the following command:

```console
docker build \
  --platform=linux/arm64 \
  --file docker/Dockerfile \
  --tag johnjohnofficial/drone-bash-plugin .
```

## Usage

```console
docker run --rm \
  -e PLUGIN_URL="http://domain/endpoint" \
  -e PLUGIN_METHOD="POST" \
  johnjohnofficial/drone-bash-plugin
```