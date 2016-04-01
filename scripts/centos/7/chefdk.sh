#!/usr/bin/env bash
set -x

URL=https://packages.chef.io/stable/el/7/chefdk-0.12.0-1.el7.x86_64.rpm

wget -O /tmp/chefdk.rpm \
  $URL && yum --nogpgcheck -y localinstall \
  /tmp/chefdk.rpm

rm -f /tmp/chefdk.rpm

exit 0
