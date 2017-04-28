#!/usr/bin/env bash
set -x

DEBIAN_FRONTEND=noninteractive apt-get -y update

DEBIAN_FRONTEND=noninteractive apt-get -y install --fix-missing \
  linux-headers-$(uname -r) \
  build-essential \
  wget \
  aptitude \
  zlib1g-dev \
  libssl-dev \
  libreadline-gplv2-dev \
  dkms \
  curl \
  unzip \
  debconf-utils \
  nfs-common \
  sudo \
  git-core \
  cloud-initramfs-growroot

if [ -f /etc/init.d/virtualbox-ose-guest-utils ]
then
  /etc/init.d/virtualbox-ose-guest-utils stop
  rmmod vboxguest

  DEBIAN_FRONTEND=noninteractive aptitude -y purge \
    virtualbox-ose-guest-x11 \
    virtualbox-ose-guest-dkms \
    virtualbox-ose-guest-utils
fi

cat <<EOF > /etc/default/grub
GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX="debian-installer=en_US"
EOF

update-grub

exit 0
