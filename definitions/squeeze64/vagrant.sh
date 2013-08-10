date > /etc/vagrant_box_build_time

mkdir -pm 700 /home/deploy/.ssh
curl -Lo /home/deploy/.ssh/authorized_keys "https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub"

chmod 0600 /home/deploy/.ssh/authorized_keys
chown -R deploy:deploy /home/deploy/.ssh

mkdir -pm 744 /deploy/current
chown -R deploy:deploy /deploy

echo "" > /var/run/motd
