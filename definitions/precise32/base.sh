apt-get -y update
apt-get -y upgrade
apt-get -y install linux-headers-$(uname -r) build-essential libffi6 libyaml-0-2 --fix-missing
apt-get -y install zlib1g-dev libreadline-gplv2 libreadline-gplv2-dev libyaml-dev git-core --fix-missing
apt-get -y install curl unzip openssl libssl-dev zlib1g ncurses-dev make nfs-common --fix-missing

groupadd -r admin
usermod -a -G admin vagrant

cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers
