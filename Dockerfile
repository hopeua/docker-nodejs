FROM hope/base

MAINTAINER Sergey Sadovoi <sergey@hope.ua>

ENV NPM_CONFIG_LOGLEVEL info
ENV NODEJS_VERSION 5.2.0

# gpg keys listed at https://github.com/nodejs/node
RUN gpg --keyserver pool.sks-keyservers.net --recv-keys \
  9554F04D7259F04124DE6B476D5A82AC7E37093B \
  94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \
  0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93 \
  71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \
  DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
  FD3A5288F042B6850C66B31F09FE44734EB7990E

RUN curl -SLO "https://nodejs.org/dist/v$NODEJS_VERSION/node-v$NODEJS_VERSION-linux-x64.tar.gz" \
  && curl -SLO "https://nodejs.org/dist/v$NODEJS_VERSION/SHASUMS256.txt.asc" \
  && gpg --verify SHASUMS256.txt.asc \
  && grep " node-v$NODEJS_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt.asc | sha256sum -c - \
  && tar -xzf "node-v$NODEJS_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODEJS_VERSION-linux-x64.tar.gz" SHASUMS256.txt.asc \
# Install GCC for node-gyp builds
  && yum install -y make gcc-c++ \
  && yum clean all
