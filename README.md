# Docker for edgedns

A docker image for [edgedns](https://github.com/jedisct1/edgedns).

## Highlight

* use edgedns 0.2.2 release.
* Run as non root.
* Expose tcp and udp port 5353.

## Build docker image

```sh
make
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
