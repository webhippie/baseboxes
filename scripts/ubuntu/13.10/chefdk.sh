#!/usr/bin/env bash
set -x

URL=https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.3.5-1_amd64.deb

wget -O /tmp/chefdk.deb \
  $URL && apt-get -y install \
  /tmp/chefdk.deb

exit 0
