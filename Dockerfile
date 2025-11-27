# -----------------------------------------------------------------------------
# Dockerfile for building dspico-bootloader
# docker build --platform linux/amd64 -t dspico-bootloader-builder .
# docker run --rm --platform linux/amd64 -v "$(pwd):/workdir" dspico-bootloader-builder
# -----------------------------------------------------------------------------
FROM --platform=linux/amd64 skylyrac/blocksds:dev-latest

WORKDIR /workdir

RUN apt-get update && apt-get install -y \
    git \
    make \
    && rm -rf /var/lib/apt/lists/*

COPY . .

CMD ["make"]