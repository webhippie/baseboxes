#!/usr/bin/env bash
set -x

apt-get -y install linux-headers-$(uname -r) build-essential libffi6 libyaml-0-2 dkms --fix-missing
apt-get -y install zlib1g-dev libreadline6 libreadline6-dev libyaml-dev git-core --fix-missing
apt-get -y install curl unzip openssl libssl-dev zlib1g ncurses-dev make nfs-common --fix-missing

if [ -f /etc/init.d/virtualbox-ose-guest-utils ]
then
  /etc/init.d/virtualbox-ose-guest-utils stop
  rmmod vboxguest

  aptitude -y purge virtualbox-ose-guest-x11 virtualbox-ose-guest-dkms virtualbox-ose-guest-utils
fi
