FROM hope/base-alpine:3.5

MAINTAINER Sergey Sadovoi <sergey@hope.ua>

ENV NODEJS_VERSION=6.9.2 \
    NODE_ENV=production

RUN \
    # NodeJS
    apk add --no-cache nodejs
