FROM hope/base-alpine:3.4

MAINTAINER Sergey Sadovoi <sergey@hope.ua>

ENV NODEJS_VERSION=6.2.0 \
    NODE_ENV=production

RUN \
    # NodeJS
    apk add --no-cache nodejs
