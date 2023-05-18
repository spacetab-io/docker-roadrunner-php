FROM php:8.0-cli-alpine AS build

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions  \
    && install-php-extensions gd yaml grpc opcache pcntl opcache intl gd pdo_mysql pdo_pgsql sockets exif zip bcmath event

RUN apk add --update --no-cache make pcre

ENV ROADRUNNER_VERSION=2023.1.1
RUN wget -O rr.tar.gz "https://github.com/roadrunner-server/roadrunner/releases/download/v${ROADRUNNER_VERSION}/roadrunner-${ROADRUNNER_VERSION}-linux-amd64.tar.gz" \
    && tar -xzf rr.tar.gz \
    && mv "roadrunner-${ROADRUNNER_VERSION}-linux-amd64/rr" /usr/local/bin/rr \
    && chmod +x /usr/local/bin/rr

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

COPY --from=roquie/smalte:latest-alpine /app/smalte /usr/local/bin/smalte
COPY base/8.0/php.ini.tmpl /usr/local/etc/php/php.ini.tmpl
COPY configure.sh /

EXPOSE 8080
WORKDIR /app

ENTRYPOINT ["/configure.sh"]
CMD ["echo", "Docker CMD instruction should be overridden to run your code."]
