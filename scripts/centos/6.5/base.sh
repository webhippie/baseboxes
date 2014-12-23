#!/usr/bin/env bash
set -x

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=epel
mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=\$basearch
enabled=1
gpgcheck=0
EOM

cat > /etc/yum.repos.d/remi.repo << EOM
[remi]
name=remi
mirrorlist=http://rpms.famillecollet.com/enterprise/6/remi/mirror
enabled=1
gpgcheck=0
EOM

yum -y install gcc make gcc-c++ kernel-devel zlib-devel openssl-devel fuse-utils
yum -y install readline-devel sqlite-devel perl wget dkms nfs-utils git bzip2

echo "UseDNS no" >> /etc/ssh/sshd_config

exit 0
