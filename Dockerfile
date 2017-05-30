FROM hope/alpine:3.6

ENV \
    NODEJS_VERSION=7.10.0 \
    NPM_VERSION=4.2.0

RUN \
    apk add --no-cache nodejs-current nodejs-current-npm
