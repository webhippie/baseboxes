#!/usr/bin/env bash
set -x

URL=https://packages.chef.io/stable/ubuntu/12.04/chefdk_0.12.0-1_amd64.deb

wget -O /tmp/chefdk.deb \
  $URL && dpkg -i \
  /tmp/chefdk.deb

exit 0
