FROM nvidia/opengl:1.0-glvnd-runtime-ubuntu18.04

ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES},display

RUN apt-get update && apt-get install -y \
	ca-certificates \
	curl \
	desktop-file-utils \
	ibus \
	ibus-gtk \
	lib32z1 \
	libx11-6 \
	libasound2-dev \
	libegl1-mesa \
	libxcb-shm0 \
	libglib2.0-0 \
	libgl1-mesa-glx \
	libxrender1 \
	libxcomposite1 \
	libxslt1.1 \
	libgstreamer1.0-dev \
	libgstreamer-plugins-base1.0-dev \
	libxi6 \
	libsm6 \
	libfontconfig1 \
	libpulse0 \
	libsqlite3-0 \
	libxcb-shape0 \
	libxcb-xfixes0 \
	libxcb-randr0 \
	libxcb-image0 \
	libxcb-keysyms1 \
	libxcb-xtest0 \
	libxtst6 \
	libnss3 \
	libxss1 \
	sudo \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN curl -sSLO https://zoom.us/client/latest/zoom_amd64.deb \
	&& dpkg -i ./zoom_amd64.deb \
	&& apt-get -f install \
	&& rm ./zoom_amd64.deb \
	&& rm -rf /var/lib/apt/lists/*

CMD zoom
