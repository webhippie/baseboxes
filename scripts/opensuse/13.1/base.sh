#!/usr/bin/env bash
set -x

sleep 10

zypper --non-interactive rm virtualbox-guest-kmp-default \
  virtualbox-guest-kmp-desktop virtualbox-guest-kmp-pae \
  virtualbox-guest-tools virtualbox-guest-x11

exit 0
