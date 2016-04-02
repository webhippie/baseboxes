#!/usr/bin/env bash
set -x

case "$PACKER_BUILD_NAME" in
  libvirt)
    # export P9_VERSION=2.6.38.5
    # export P9_SHA=af82a8a93f3303fcd1a31f7defd901a0dd129e36

    # yum -y install kernel-devel-`uname -r` unzip

    # wget -O /tmp/centos-9p-${P9_VERSION}.zip https://github.com/antst/centos-9p/archive/${P9_SHA}.zip
    # unzip -d /tmp /tmp/centos-9p-${P9_VERSION}.zip
    # mv /tmp/centos-9p-${P9_SHA} /usr/src/centos-9p-${P9_VERSION}

    # dkms add -m centos-9p -v ${P9_VERSION}
    # dkms build -m centos-9p -v ${P9_VERSION}
    # dkms install -m centos-9p -v ${P9_VERSION}

    # dkms status
    ;;
esac

exit 0
