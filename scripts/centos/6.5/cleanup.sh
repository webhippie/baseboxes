#!/usr/bin/env bash
set -x

yum -y clean all

ls /etc/sysconfig/network-scripts
sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-eth0

ls /etc/udev/rules.d
#rm /etc/udev/rules.d/70-persistent-net.rules
