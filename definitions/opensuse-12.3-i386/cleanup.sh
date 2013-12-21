rm -f /etc/zypp/locks

rm -rf VBoxGuestAdditions_*.iso

sed -i /HWADDR/d /etc/sysconfig/network/ifcfg-eth0
rm /etc/udev/rules.d/70-persistent-net.rules
