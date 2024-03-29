FROM nvidia/opengl:1.0-glvnd-runtime-ubuntu20.04

ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES},display

RUN apt-get update && apt-get install -y wget && \
    wget https://zoom.us/client/latest/zoom_amd64.deb && \
    apt-get install -y --no-install-recommends ./zoom_amd64.deb && \
    rm ./zoom_amd64.deb && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT zoom
