#!/usr/bin/env bash
set -x

apt-get -y update
apt-get -y install linux-headers-$(uname -r) build-essential wget aptitude --fix-missing
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev dkms --fix-missing
apt-get -y install curl unzip debconf-utils nfs-common sudo git-core --fix-missing

if [ -f /etc/init.d/virtualbox-ose-guest-utils ]
then
  /etc/init.d/virtualbox-ose-guest-utils stop
  rmmod vboxguest

  aptitude -y purge virtualbox-ose-guest-x11 virtualbox-ose-guest-dkms virtualbox-ose-guest-utils
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
