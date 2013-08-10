apt-get -y update
apt-get -y install linux-headers-$(uname -r) build-essential --fix-missing
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev --fix-missing
apt-get -y install curl unzip debconf-utils nfs-common sudo git-core --fix-missing

echo "deploy ALL=NOPASSWD:ALL" > /etc/sudoers.d/deploy
echo "UseDNS no" >> /etc/ssh/sshd_config

cat <<EOF > /etc/default/grub
GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX="debian-installer=en_US"
EOF

update-grub
