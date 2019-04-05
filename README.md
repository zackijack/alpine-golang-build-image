alpine-golang-buildimage
========================

This repository contains the sources for the following [docker](https://www.docker.com/) base images:
- [`zackijack/alpine-golang-build-image`](https://hub.docker.com/r/zackijack/alpine-golang-build-image)

## Usage

This Image is intedend to be used in multi stage docker builds and is not for final or production use you can find more info
about multistage build in this [blog post](https://www.critiqus.com/post/multi-stage-docker-builds/)

```
FROM zackijack/alpine-golang-build-image

ADD . /go/src/github.com/zackijack/test
WORKDIR /go/src/github.com/zackijack/test

RUN go build *.go

```
## Developing and testing

```bash
# Pull image
git clone https://github.com/zackijack/alpine-golang-build-image.git
cd alpine-golang-build-image

# hack hack hack

# Build
make build
```