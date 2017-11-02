FROM hope/alpine:3.6

ENV \
    NODEJS_VERSION=8.9.0 \
    NPM_VERSION=5.5.1

RUN \
    apk add --no-cache nodejs@edge nodejs-npm@edge
