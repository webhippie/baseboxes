date > /etc/vagrant_box_build_time

echo "vagrant ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

mkdir -pm 700 /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys "https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub"

chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

mkdir -pm 744 /vagrant
chown -R vagrant:vagrant /vagrant

echo "" > /var/run/motd
