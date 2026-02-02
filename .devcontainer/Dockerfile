FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  build-essential \
  gcc \
  g++ \
  make \
  cmake \
  git \
  python3 \
  python3-venv \
  python3-pip \
  && rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements.txt

RUN python3 -m venv /opt/platformio \
  && /opt/platformio/bin/pip install --upgrade pip \
  && /opt/platformio/bin/pip install -r requirements.txt

ENV PATH="/opt/platformio/bin:$PATH"

RUN usermod -aG dialout vscode
WORKDIR /workspace
