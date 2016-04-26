FROM hope/base-alpine:3.3

MAINTAINER Sergey Sadovoi <sergey@hope.ua>

ENV NODEJS_VERSION=5.10.1 \
    NODE_ENV=production

RUN \
    # NodeJS
    apk add --no-cache nodejs@edge
