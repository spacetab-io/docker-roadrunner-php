<p align="center">
    <img src="https://raw.githubusercontent.com/docker-library/docs/c350af05d3fac7b5c3f6327ac82fe4d990d8729c/docker/logo.png" alt="Docker">
</p>

<p align="center">
Docker image configured for <a href="https://roadrunner.dev/">roadrunner</a> in production use.
</p> 

## Docker images

* `spacetabio/roadrunner-alpine:7.3-base-1.1.0` – Simple image with PHP and pre-installed extensions. <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/7.3-base-1.1.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/7.3-base-1.1.0?style=flat-square)
* `spacetabio/roadrunner-alpine:7.4-base-1.1.0` – Simple image with PHP and pre-installed extensions. <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/7.4-base-1.1.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/7.4-base-1.1.0?style=flat-square)

With xdebug:

* `spacetabio/roadrunner-alpine:7.3-base-xdebug-1.1.0` – Simple image with PHP and pre-installed extensions. <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/7.3-base-1.1.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/7.3-base-xdebug-1.1.0?style=flat-square)
* `spacetabio/roadrunner-alpine:7.4-base-xdebug-1.1.0` – Simple image with PHP and pre-installed extensions. <br>
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/spacetabio/roadrunner-alpine/7.4-base-1.1.0?style=flat-square)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/spacetabio/roadrunner-alpine/7.4-base-xdebug-1.1.0?style=flat-square)

## Basic usage

```Dockerfile
FROM spacetabio/roadrunner-alpine:7.4-base-1.1.0

COPY . /app

# rr is pre installed but config should be provided by application. 
CMD ["rr serve", "-c", ".rr.yaml"]
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

ENV PHP_FFI_ENABLE=false # only for 7.4 php version
ENV PHP_FFI_PRELOAD='' # only for 7.4 php version
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
 - Image tag `*-1.1.0` contains RoadRunner `1.8.0`. 


## Changelog

* [Base docker image](base/CHANGELOG.md)

## License

The MIT License

Copyright © 2020 spacetab.io, Inc. https://spacetab.io

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

