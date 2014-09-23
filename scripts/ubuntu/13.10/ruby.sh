#!/usr/bin/env bash
set -x

apt-get -y install libxml2-dev libxslt-dev ruby2.0 ruby2.0-dev
REALLY_GEM_UPDATE_SYSTEM=1 gem2.0 update --system

VERSION=1.9.1
sudo update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby${VERSION} 500 \
  --slave /usr/share/man/man1/ruby.1.gz ruby.1.gz /usr/share/man/man1/ruby${VERSION}.1.gz \
  --slave /usr/bin/erb erb /usr/bin/erb${VERSION} \
  --slave /usr/bin/gem gem /usr/bin/gem${VERSION} \
  --slave /usr/bin/irb irb /usr/bin/irb${VERSION} \
  --slave /usr/bin/rake rake /usr/bin/rake${VERSION} \
  --slave /usr/bin/rdoc rdoc /usr/bin/rdoc${VERSION} \
  --slave /usr/bin/ri ri /usr/bin/ri${VERSION} \
  --slave /usr/bin/testrb testrb /usr/bin/testrb${VERSION}

VERSION=2.0
sudo update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby${VERSION} 600 \
  --slave /usr/share/man/man1/ruby.1.gz ruby.1.gz /usr/share/man/man1/ruby${VERSION}.1.gz \
  --slave /usr/bin/erb erb /usr/bin/erb${VERSION} \
  --slave /usr/bin/gem gem /usr/bin/gem${VERSION} \
  --slave /usr/bin/irb irb /usr/bin/irb${VERSION} \
  --slave /usr/bin/rake rake /usr/bin/rake${VERSION} \
  --slave /usr/bin/rdoc rdoc /usr/bin/rdoc${VERSION} \
  --slave /usr/bin/ri ri /usr/bin/ri${VERSION} \
  --slave /usr/bin/testrb testrb /usr/bin/testrb${VERSION}

# apt-get -y install libxml2-dev libxslt-dev
# wget -O /tmp/ruby-install-0.3.4.tar.gz https://github.com/postmodern/ruby-install/archive/v0.3.4.tar.gz

# pushd /tmp
# tar -xzvf ruby-install-0.3.4.tar.gz

# pushd /tmp/ruby-install-0.3.4
# make install
# popd
# popd

# rm -rf /tmp/ruby-install-0.3.4
# /usr/local/bin/ruby-install -i /usr/local ruby 2.0.0-p353
