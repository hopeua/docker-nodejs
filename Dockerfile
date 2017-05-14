FROM hope/base-alpine:3.5

ENV \
    NODEJS_VERSION=6.10.3

RUN \
    apk add --no-cache nodejs@edge
