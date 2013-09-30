git clone https://github.com/sstephenson/ruby-build.git /var/ruby-build

pushd /var/ruby-build > /dev/null
bash install.sh
popd > /dev/null

/usr/local/bin/ruby-build 2.0.0-p247 /usr/local
