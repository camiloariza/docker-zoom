# zoom-us on docker

[zoom-us](https://zoom.us/) on [opengl-nvidia-docker](https://hub.docker.com/r/nvidia/opengl)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## usage

```shell
docker run -ti --rm \
  --gpus all \
  -e DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $HOME/.zoom/:/root/.zoom \
  -v /dev/shm:/dev/shm \
  --device /dev/video0 \
  --device /dev/snd \
  --device /dev/dri \
  --name zoom \
  camiloariza/zoom
```
