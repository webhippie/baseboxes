#!/usr/bin/env bash
set -x

echo -e "vagrant ALL=(ALL) NOPASSWD: ALL\n" >> /etc/sudoers.d/vagrant

mkdir -m 0700 /home/vagrant/.ssh

wget --no-check-certificate \
  "https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub" \
  -O /home/vagrant/.ssh/authorized_keys

chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant.users /home/vagrant/.ssh

echo "" > /etc/motd
