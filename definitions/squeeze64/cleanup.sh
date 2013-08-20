aptitude -y autoclean
aptitude --purge clean

rm -rf /var/mail/* > /dev/null 2>&1
rm -rf /var/lib/dhcp/* > /dev/null 2>&1

rm -rf /dev/.udev/
rm -rf /lib/udev/rules.d/75-persistent-net-generator.rules
rm -rf /etc/udev/rules.d/70-persistent-net.rules

mkdir /etc/udev/rules.d/70-persistent-net.rules

echo "pre-up sleep 2" >> /etc/network/interfaces

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
rm -f /etc/ssh/ssh_host_*

ssh-keygen -f /etc/ssh/ssh_host_rsa_key -t rsa -N ""
ssh-keygen -f /etc/ssh/ssh_host_dsa_key -t dsa -N ""
insserv -r /etc/init.d/ssh_gen_host_keys

rm -f $0
EOF

chmod a+x /etc/init.d/ssh_gen_host_keys
insserv /etc/init.d/ssh_gen_host_keys
