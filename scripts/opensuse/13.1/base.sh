#!/usr/bin/env bash
set -x

zypper rm -y virtualbox-guest-kmp-default \
  virtualbox-guest-kmp-desktop virtualbox-guest-kmp-pae \
  virtualbox-guest-tools virtualbox-guest-x11
