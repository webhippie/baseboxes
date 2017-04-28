#!/usr/bin/env bash
set -x

DEBIAN_FRONTEND=noninteractive apt-get -y update

DEBIAN_FRONTEND=noninteractive apt-get -y install  --fix-missing \
  linux-headers-$(uname -r) \
  build-essential \
  libffi6 \
  libyaml-0-2 \
  dkms \
  zlib1g-dev \
  libreadline6 \
  libreadline6-dev \
  libyaml-dev \
  git-core \
  curl \
  unzip \
  openssl \
  libssl-dev \
  zlib1g \
  ncurses-dev \
  make \
  nfs-common \
  cloud-initramfs-growroot

if [ -f /etc/init.d/virtualbox-ose-guest-utils ]
then
  /etc/init.d/virtualbox-ose-guest-utils stop
  rmmod vboxguest

  aptitude -y purge \
    virtualbox-ose-guest-x11 \
    virtualbox-ose-guest-dkms \
    virtualbox-ose-guest-utils
fi

exit 0
