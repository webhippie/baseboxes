#!/usr/bin/env bash
set -x

yum -y clean all

sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-eth0
rm /etc/udev/rules.d/70-persistent-net.rules
