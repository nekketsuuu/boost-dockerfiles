## Boost C++ Library for Docker

Dockerfiles for [Boost C++ Library](http://www.boost.org/).

These images are provided mainly for using [OpenSiv3D](https://github.com/Siv3D/OpenSiv3D) on Docker.

## Supported version

Currently, only Boost 1.65.0 with gcc 7 on Ubuntu 16.04 is supported.

For their tag names, consult to Docker Hub. Note that there is no `latest` tag.

### GCC

|        | Ubuntu 16.04 |
|:------:|:------------:|
| 1.65.0 |       o      |

### Clang

No support.

## Usage

```sh
docker run -it nekketsuuu/boost:1.65.0_gcc-7_ubuntu-16.04 /bin/bash
```

## Build

Run `docker-build.sh` with version.

```sh
./docker-build.sh 1.65.0_gcc-7_ubuntu-16.04
```

If you want to publish an image, push it to Docker Hub

```sh
# If necessary, run `docker login` at first.
docker push <image name>
```
