#!/usr/bin/env bash
set -x

case "$PACKER_BUILDER_TYPE" in

virtualbox-iso|virtualbox-ovf) 
  mkdir /tmp/vbox

  mount -o loop VBoxGuestAdditions.iso /tmp/vbox 
  sh /tmp/vbox/VBoxLinuxAdditions.run --nox11

  umount /tmp/vbox
  rm -rf /tmp/vbox

  rm *.iso
  ;;

vmware-iso|vmware-ovf) 
  mkdir /tmp/vmfusion
  mkdir /tmp/vmfusion-archive

  mount -o loop linux.iso /tmp/vmfusion
  tar xzf /tmp/vmfusion/VMwareTools-*.tar.gz -C /tmp/vmfusion-archive
  /tmp/vmfusion-archive/vmware-tools-distrib/vmware-install.pl --default

  umount /tmp/vmfusion
  rm -rf  /tmp/vmfusion
  rm -rf  /tmp/vmfusion-archive

  rm *.iso
  ;;

esac
