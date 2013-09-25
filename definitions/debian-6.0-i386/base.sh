apt-get -y update
apt-get -y install linux-headers-$(uname -r) build-essential libffi5 libyaml-0-2 --fix-missing
apt-get -y install zlib1g-dev libreadline6 libreadline6-dev libyaml-dev git-core --fix-missing
apt-get -y install curl unzip openssl libssl-dev zlib1g ncurses-dev make nfs-common --fix-missing

cp /etc/sudoers /etc/sudoers.orig
sed -i -e 's/%sudo ALL=(ALL) ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

echo "UseDNS no" >> /etc/ssh/sshd_config

echo << 'EOF' > /etc/default/grub
GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX="debian-installer=en_US"
EOF

update-grub
