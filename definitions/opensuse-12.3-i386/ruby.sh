rpm --import http://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/openSUSE_12.3/repodata/repomd.xml.key
zypper addrepo -n 'Ruby Extensions' http://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/openSUSE_12.3/ repo-ruby-extensions

zypper -n install -l git libopenssl-devel libxml2-devel libxslt-devel ruby ruby-devel
