#!/usr/bin/env bash
set -x

if [[ $PACKER_BUILDER_TYPE =~ vmware ]]; then
  mount -o loop /home/vagrant/linux.iso /mnt
  tar xfz /mnt/VMwareTools-*.tar.gz -C /tmp/
  umount /mnt

  /tmp/vmware-tools-distrib/vmware-install.pl -d

  rm -rf /tmp/vmware*
  rm -f /home/vagrant/linux.iso
fi

if [[ $PACKER_BUILDER_TYPE =~ virtualbox ]]; then
  mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
  /mnt/VBoxLinuxAdditions.run --nox11
  umount /mnt

  rm -f /home/vagrant/VBoxGuestAdditions.iso
fi
