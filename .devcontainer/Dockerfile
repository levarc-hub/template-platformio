FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
  build-essential \
  gcc \
  g++ \
  make \
  cmake \
  ninja-build \
  git \
  curl \
  wget \
  unzip \
  python3 \
  python3-venv \
  python3-pip \
  usbutils \
  udev \
  openocd \
  dfu-util \
  avrdude \
  && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/platformio \
  && /opt/platformio/bin/pip install --upgrade pip \
  && /opt/platformio/bin/pip install platformio yamllint

# Make PlatformIO available globally
ENV PATH="/opt/platformio/bin:$PATH"
ENV PLATFORMIO_CORE_DIR=/home/vscode/.platformio

# Serial access
RUN usermod -aG dialout vscode

WORKDIR /workspace
