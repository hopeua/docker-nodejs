FROM hope/alpine:3.6

ENV \
    NODEJS_VERSION=6.10.3

RUN \
    apk add --no-cache nodejs
