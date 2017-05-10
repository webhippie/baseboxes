#!/bin/sh
set -x

rm -rf /var/cache/apk/* > /dev/null 2>&1
rm -rf /var/mail/* > /dev/null 2>&1
rm -rf /var/lib/dhcp/* > /dev/null 2>&1

cat << 'EOF' > /etc/init.d/ssh_gen_host_keys
#!/sbin/runscript
depend() {
  need net
}

start() {
  ebegin "Regenerating SSH keys"

  rm -f /etc/ssh/ssh_host_*
  
  ssh-keygen -f /etc/ssh/ssh_host_rsa_key -t rsa -N "" && ssh-keygen -f /etc/ssh/ssh_host_dsa_key -t dsa -N ""
  res=$?

  rc-update del ssh_gen_host_keys
  rm -f /etc/init.d/ssh_gen_host_keys

  eend $res
}
EOF

chmod a+x /etc/init.d/ssh_gen_host_keys
rc-update add ssh_gen_host_keys default

exit 0
