# Docker for edgedns

[![docker icon](https://dockeri.co/image/mingc/edgedns)](https://hub.docker.com/r/mingc/edgedns/)
[![Docker Image CI](https://github.com/mingchen/docker-edgedns/actions/workflows/docker-image.yml/badge.svg)](https://github.com/mingchen/docker-edgedns/actions/workflows/docker-image.yml)

A docker image for [edgedns](https://github.com/jedisct1/edgedns), a high performance DNS cache.

## Highlight

* Use [edgedns 0.2.2](https://github.com/jedisct1/edgedns/releases/tag/0.2.2) release.
* Run as non root.
* Expose tcp and udp port 5353 (because of non-root).
* Health check by UDP port is alive.
* Use `debian:buster-slim` as base image.

## Build docker image

```sh
make
```

or

```sh
docker build -t mingc/edgedns .
```

## Pull image from docker hub

```sh
docker pull mingc/edgedns
```

## Run

Run with default [config](etc/edgedns.toml):

```
docker run -d -p 53:5353 mingc/edgedns
```

Run with custom config:

```
docker run -d -v <your edgedns.toml>:/etc/edgedns.toml -p 53:5353 mingc/edgedns
```

## References

* [edgedns source code](https://github.com/jedisct1/edgedns)
