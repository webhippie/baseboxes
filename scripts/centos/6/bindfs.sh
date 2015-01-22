#!/usr/bin/env bash
set -x

yum -y install fuse fuse-devel

pushd /tmp > /dev/null
wget http://bindfs.org/downloads/bindfs-1.12.6.tar.gz -O bindfs.tar.gz
tar --overwrite -zxvf bindfs.tar.gz

if [ -d bindfs-1.12.6 ]
then
  cd bindfs-1.12.6 && ./configure && make && make install
fi

ln -sf /usr/local/bin/bindfs /usr/bin

popd > /dev/null

exit 0
