yum -y install libxml2-devel libxslt-devel
wget -O /tmp/ruby-install-0.3.4.tar.gz https://github.com/postmodern/ruby-install/archive/v0.3.4.tar.gz

pushd /tmp
tar -xzvf ruby-install-0.3.4.tar.gz

pushd /tmp/ruby-install-0.3.4
make install
popd
popd

rm -rf /tmp/ruby-install-0.3.4
/usr/local/bin/ruby-install -i /usr/local ruby 2.0.0-p353

echo 'pathmunge /usr/local/bin' > /etc/profile.d/local.sh
chmod +x /etc/profile.d/local.sh
