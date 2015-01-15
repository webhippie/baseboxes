#!/usr/bin/env bash
set -x

URL=https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.3.5-1.x86_64.rpm

wget -O /tmp/chefdk.rpm \
  $URL && yum --nogpgcheck -y localinstall \
  /tmp/chefdk.rpm

rm -f /tmp/chefdk.rpm

exit 0
