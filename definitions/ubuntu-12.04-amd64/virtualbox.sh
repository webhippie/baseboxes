if test -f /home/vagrant/.vbox_version; then
  apt-get install -y dkms

  VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
  VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso

  mount -o loop $VBOX_ISO /mnt
  yes | sh /mnt/VBoxLinuxAdditions.run
  umount /mnt

  rm -f $VBOX_ISO

  /etc/init.d/vboxadd start

  mkdir /tmp/veewee-validation
  mount -t vboxsf veewee-validation /tmp/veewee-validation
fi
