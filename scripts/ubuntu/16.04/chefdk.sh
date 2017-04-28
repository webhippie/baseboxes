#!/usr/bin/env bash
set -x

URL=https://packages.chef.io/files/stable/chefdk/1.3.43/ubuntu/16.04/chefdk_1.3.43-1_amd64.deb

wget -O /tmp/chefdk.deb \
  $URL && dpkg -i \
  /tmp/chefdk.deb

exit 0
