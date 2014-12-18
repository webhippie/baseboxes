#!/usr/bin/env bash
set -x

URL=https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.3.5-1.x86_64.rpm

wget -O /tmp/chefdk.deb \
  $URL && yum -y install \
  /tmp/chefdk.deb

exit 0
