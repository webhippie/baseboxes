#!/bin/sh
set -x

adduser -D vagrant wheel
echo "vagrant:vagrant" | chpasswd

addgroup vagrant vagrant

exit 0
