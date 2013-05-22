date > /etc/vagrant_box_build_time

apt-get -y update
#apt-get -y install linux-headers-$(uname -r) build-essential libffi5 libyaml-0-2 --fix-missing
#apt-get -y install zlib1g-dev libreadline6 libreadline6-dev libyaml-dev git-core --fix-missing
#apt-get -y install curl unzip openssl libssl-dev zlib1g ncurses-dev make --fix-missing

echo "UseDNS no" >> /etc/ssh/sshd_config

echo << 'EOF' > /etc/default/grub
GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX="debian-installer=en_US"
EOF

update-grub

curl -L https://www.opscode.com/chef/install.sh | bash

#groupadd -r rbenv
#gpasswd -a deploy rbenv

#echo << 'EOF' > /etc/profile.d/rbenv.sh
#export RBENV_ROOT=/usr/local/rbenv
#export PATH="$RBENV_ROOT/bin:$PATH"

#eval "$(rbenv init -)"
#EOF

#chmod +x /etc/profile.d/rbenv.sh

#export RBENV_ROOT=/usr/local/rbenv
#export PATH="$RBENV_ROOT/shims:$RBENV_ROOT/bin:$PATH"

#curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
#git clone https://github.com/joefiorini/rbenv-prompt.git $RBENV_ROOT/plugins/rbenv-prompt
#git clone https://github.com/jamis/rbenv-gemset.git $RBENV_ROOT/plugins/rbenv-gemset

#MAKE_OPTS="-j 4" rbenv install 2.0.0-p195
#rbenv global 2.0.0-p195
#rbenv rehash

#gem update --system
#rbenv rehash

#gem install bundler rake --no-ri --no-rdoc
#rbenv rehash

#chown -R root:rbenv $RBENV_ROOT
#chmod -R 775 $RBENV_ROOT

sed -i -e 's/%sudo ALL=(ALL) ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

mkdir -pm 700 /home/deploy/.ssh
curl -Lo /home/deploy/.ssh/authorized_keys 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'

chmod 0600 /home/deploy/.ssh/authorized_keys
chown -R deploy:deploy /home/deploy/.ssh

mkdir -pm 700 /root/.ssh
touch /root/.ssh/authorized_keys

chmod 0600 /root/.ssh/authorized_keys
chown -R root:root /root/.ssh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCc1nE4kCs9WXEEbotF+0Rivnr/9I0fc56QLZTqIr4Rsl3iZcvVDgYJmh6rPcl9xKBptNo/jK1EJF/bm2APf6wIU5Q7tNjeIw5IMJnBRBfPdQujXumb1LZMGnQvPT/gHdpVZvPkYlKkBocOJGPG99GZL0FlXXpc4eDYrgCMfCzRFG1SbQWcUdipbJJgELmbiOy7c5eHtb9i51x7g99pC91WnpInuN4pa0AFHwDQpBhS8RSLFEAfWNNs4T3SiYiUUq0lIHBoIoTM8fTTzhshXAlGWuwsZ9c9luEAw+n4QL8oD9a2ycWTJ3JCRK3CC/+J2MqCROSL4zpVA7+PFrloScMV tboerger@schleppmac.tbpro.de" >> /root/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCostSqSNw9Fl50Tmo4fupUPJWL0SM5efCALsnRbVMRmDQz2vIXAWX4pd7zumde9RNApJtjF+y/gFSteyf0au20LusvgrNP86EJfYVQ4IzDLf7+GKHV920WnQVUQkUvoCYwtirjG7fVQxB8Wdp3iqdsTSIGkQBXzrEBwpZL75i9BwiVH8YsMCAvu0PVGAYeppQhvBMrSYZO8VaB0hMrXkbUZaSwyAJGRQ/35pIVd9r9WBri+px06jkPi12gHL6gFXTFDKMgWea0OS2oaIYnCyA4ytm5ob2h/9mgWB3TWqekMUczLp/ZeJO4Gn2ea6m/T251lGZH4fm1CRYAYKJkaxjH tboerger@homemac.tbpro.de" >> /root/.ssh/authorized_keys

mkdir -pm 744 /deploy/current
chown -R deploy:deploy /deploy

echo "" > /var/run/motd

if [ -f .vbox_version ]; then
  if test -f /etc/init.d/virtualbox-ose-guest-utils; then
    /etc/init.d/virtualbox-ose-guest-utils stop
  fi

  rmmod vboxguest

  aptitude -y purge virtualbox-ose-guest-x11 virtualbox-ose-guest-dkms virtualbox-ose-guest-utils
  
  apt-get install -y dkms
  apt-get -y install --no-install-recommends libdbus-1-3

  VBOX_VERSION=$(cat /home/deploy/.vbox_version)
  VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso

  curl -Lo /tmp/$VBOX_ISO "http://download.virtualbox.org/virtualbox/$VBOX_VERSION/$VBOX_ISO"

  mount -o loop /tmp/$VBOX_ISO /mnt
  sh /mnt/VBoxLinuxAdditions.run --nox11
  umount /mnt

  rm /tmp/$VBOX_ISO
  
  /etc/init.d/vboxadd start
fi

aptitude -y autoclean
aptitude --purge clean

rm -rf /var/mail/* > /dev/null 2>&1
rm -rf /var/lib/dhcp/* > /dev/null 2>&1

rm -rf /dev/.udev/

rm -rf /lib/udev/rules.d/75-persistent-net-generator.rules
rm -rf /etc/udev/rules.d/70-persistent-net.rules

mkdir /etc/udev/rules.d/70-persistent-net.rules

echo "pre-up sleep 2" >> /etc/network/interfaces

rm -f /etc/ssh/ssh_host_*

cat << 'EOF' > /etc/init.d/ssh_gen_host_keys
#!/bin/sh
### BEGIN INIT INFO
# Provides:          Generates new ssh host keys on first boot
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:
# Short-Description: Generates new ssh host keys on first boot
# Description:       Generates new ssh host keys on first boot
### END INIT INFO
ssh-keygen -f /etc/ssh/ssh_host_rsa_key -t rsa -N ""
ssh-keygen -f /etc/ssh/ssh_host_dsa_key -t dsa -N ""
insserv -r /etc/init.d/ssh_gen_host_keys

if [ -f /root/postinstall.sh ]; then
  rm -f /root/postinstall.sh
fi

rm -f $0
EOF

chmod a+x /etc/init.d/ssh_gen_host_keys
insserv /etc/init.d/ssh_gen_host_keys

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
