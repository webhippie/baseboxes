#!/usr/bin/env bash
set -x

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

zypper --non-interactive rm virtualbox-guest-kmp-default \
  virtualbox-guest-kmp-desktop virtualbox-guest-kmp-pae \
  virtualbox-guest-tools virtualbox-guest-x11
