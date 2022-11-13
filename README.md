<p align="center">
    <img src="https://raw.githubusercontent.com/docker-library/docs/c350af05d3fac7b5c3f6327ac82fe4d990d8729c/docker/logo.png" alt="Docker">
</p>

<p align="center">
Docker image configured for <a href="https://roadrunner.dev/">roadrunner</a> in production use.
</p> 

## Docker images

Simple image with PHP, RoadRunner and pre-installed extensions:

* `spacetabio/roadrunner-alpine:7.4-base-1.9.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/7.4-base-1.9.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/7.4-base-1.9.0?style=flat-square)
* `spacetabio/roadrunner-alpine:8.0-base-1.9.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/8.0-base-1.9.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/8.0-base-1.9.0?style=flat-square)
* `spacetabio/roadrunner-alpine:8.1-base-1.9.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/8.1-base-1.9.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/8.1-base-1.9.0?style=flat-square)
* DEPRECATED:
* `spacetabio/roadrunner-alpine:7.4-spiral-1.8.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/7.4-spiral-1.8.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/7.4-spiral-1.8.0?style=flat-square)
* `spacetabio/roadrunner-alpine:8.0-spiral-1.8.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/8.0-spiral-1.8.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/8.0-spiral-1.8.0?style=flat-square)
* `spacetabio/roadrunner-alpine:8.1-spiral-1.8.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/8.1-spiral-1.8.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/8.1-spiral-1.8.0?style=flat-square)

With xdebug:

* `spacetabio/roadrunner-alpine:7.4-base-xdebug-1.9.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/7.4-base-1.9.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/7.4-base-xdebug-1.9.0?style=flat-square)
* `spacetabio/roadrunner-alpine:8.0-base-xdebug-1.9.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/8.0-base-1.9.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/8.0-base-xdebug-1.9.0?style=flat-square)
* `spacetabio/roadrunner-alpine:8.1-base-xdebug-1.9.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/8.1-base-1.9.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/8.1-base-xdebug-1.9.0?style=flat-square)
* DEPRECATED:
* `spacetabio/roadrunner-alpine:7.4-spiral-xdebug-1.8.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/7.4-spiral-1.8.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/7.4-spiral-xdebug-1.8.0?style=flat-square)
* `spacetabio/roadrunner-alpine:8.0-spiral-xdebug-1.8.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/8.0-spiral-1.8.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/8.0-spiral-xdebug-1.8.0?style=flat-square)
* `spacetabio/roadrunner-alpine:8.1-spiral-xdebug-1.8.0` <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/8.1-spiral-1.8.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/8.1-spiral-xdebug-1.8.0?style=flat-square)

## Basic usage

Roadrunner:

```Dockerfile
FROM spacetabio/roadrunner-alpine:8.1-base-1.9.0

COPY . /app

# rr is pre installed but config should be provided by application. 
CMD ["rr", "serve", "-c", ".rr.yaml"]
```

Spiral Framework (<= v2.8):

```Dockerfile
FROM spacetabio/roadrunner-alpine:8.1-spiral-1.9.0

COPY . /app

# rr is pre installed but config should be provided by application. 
CMD ["spiral", "serve", "-c", ".rr.yaml"]
```

## Extensions

As default php-extensions are pre-installed:

 * `opcache`
 * `pnctl`
 * `yaml`
 * `intl`
 * `sockets`
 * `gd`
 * `exif`
 * `zip`
 * `bcmath`
 * `grpc`
 * `event`

## Configure

You can configure `php.ini` options thought changing following env variables in your `Dockerfile`:
 
```text
ENV PHP_MEMORY_LIMIT=-1
ENV PHP_MAX_EXECUTION_TIME=0
ENV PHP_MAX_INPUT_TIME=60
ENV PHP_ERROR_REPORTING="E_ALL & ~E_DEPRECATED & ~E_STRICT"
ENV PHP_DISPLAY_ERRORS=Off
ENV PHP_POST_MAX_SIZE=512M
ENV PHP_UPLOAD_MAX_FILESIZE=512M
ENV PHP_MAX_FILE_UPLOADS=20
ENV PHP_DEFAULT_MIMETYPE=application/json
ENV PHP_SESSION_STRICT_MODE=1
ENV PHP_SESSION_COOKIE_SECURE=1
ENV PHP_EXPOSE_PHP=Off
ENV PHP_DATE_TIMEZONE=UTC
ENV PHP_SHORT_OPEN_TAG=Off

ENV PHP_FFI_ENABLE=false
ENV PHP_FFI_PRELOAD=''
ENV PHP_OPCACHE_ENABLE=1
ENV PHP_OPCACHE_ENABLE_CLI=1
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=512
ENV PHP_OPCACHE_INTERNED_STRINGS_BUFFER=16
ENV PHP_OPCACHE_MAX_ACCELERATED_FILES_AUTO=true
ENV PHP_OPCACHE_MAX_ACCELERATED_FILES=50000
ENV PHP_OPCACHE_REVALIDATE_FREQ=0
ENV PHP_OPCACHE_ENABLE_FILE_OVERRIDE=1
ENV PHP_OPCACHE_FILE_CACHE_ONLY=1
```

## Version

Format: `{phpVersion}-{imageType}-{semverImageVersion}`

Map:
 - Image tag `*-1.9.0+` contains RoadRunner `2.11.4`
 - Image tag `*-1.8.0+` contains RoadRunner `2.7.3` and Spiral binary (in separate images).
 - Image tag `*-1.7.0+` contains RoadRunner `2.5.6` and Spiral binary (in separate images).
 - Image tag `*-1.6.0+` contains RoadRunner `2.4.2` and Spiral binary (in separate images).
 - Image tag `*-1.5.0+` contains RoadRunner `2.3.3` and Spiral binary (in separate images).
 - Image tag `*-1.4.0+` contains RoadRunner `2.3.3` and Spiral binary (in separate images).
 - Image tag `*-1.3.0` contains RoadRunner `2.3.3`.
 - Image tag `*-1.2.0` contains RoadRunner `1.8.1`. 
 - Image tag `*-1.1.0` contains RoadRunner `1.9.0`.
 - Image tag `*-1.0.0` contains RoadRunner `1.9.0`. 

## Build and push to docker hub

Shell `bin/bash` is required.

```bash
# make PUSH=true VERSION=latest base74
# make PUSH=true VERSION=latest base80
make PUSH=true VERSION=latest base81
```

## Changelog

* [link](CHANGELOG.md)

## License

The MIT License

Copyright © 2022 spacetab.io, Inc. https://spacetab.io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

