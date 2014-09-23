#!/usr/bin/env bash
set -x

rm -f /etc/zypp/repos.d/*.repo

rpm --import http://download.opensuse.org/distribution/13.1/repo/oss/gpg-pubkey-3dbdc284-4be1884d.asc
rpm --import http://download.opensuse.org/distribution/13.1/repo/oss/gpg-pubkey-307e3d54-4be01a65.asc

zypper ar http://download.opensuse.org/distribution/13.1/repo/oss/ dist-oss
zypper ar http://download.opensuse.org/distribution/13.1/repo/non-oss/ dist-non-oss

zypper ar http://download.opensuse.org/update/13.1/ update
zypper ar http://download.opensuse.org/update/13.1-non-oss/ update-non-oss

zypper ref
zypper up -y

