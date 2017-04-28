#!/usr/bin/env bash
set -x

URL=https://packages.chef.io/files/stable/chefdk/1.3.43/el/7/chefdk-1.3.43-1.el7.x86_64.rpm

wget -O /tmp/chefdk.rpm \
  $URL && yum --nogpgcheck -y localinstall \
  /tmp/chefdk.rpm

rm -f /tmp/chefdk.rpm

exit 0
