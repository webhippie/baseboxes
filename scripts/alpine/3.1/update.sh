#!/bin/sh
set -x

echo "http://nl.alpinelinux.org/alpine/v3.1/main" >| /etc/apk/repositories
echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories

apk update
apk upgrade

apk add \
  build-base \
  bash \
  sudo \
  wget

exit 0
