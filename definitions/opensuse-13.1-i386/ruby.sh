rpm --import http://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/openSUSE_13.1/repodata/repomd.xml.key
zypper addrepo -n 'Ruby Extensions' http://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/openSUSE_13.1/ repo-ruby-extensions

zypper -n install -l git-core libopenssl-devel libxml2-devel libxslt-devel ruby ruby-devel
