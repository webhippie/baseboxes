#!/usr/bin/env bash
set -x

mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run
umount /mnt

rm -rf VBoxGuestAdditions.iso
