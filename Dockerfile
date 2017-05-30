FROM hope/alpine:3.6

ENV \
    NODEJS_VERSION=6.10.3 \
    NPM_VERSION=3.10.10

RUN \
    apk add --no-cache nodejs nodejs-npm
