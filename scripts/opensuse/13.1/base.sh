#!/usr/bin/env bash
set -x

zypper --non-interactive rm \
  virtualbox-guest-tools \
  virtualbox-guest-x11 \
  virtualbox-guest-kmp-default \
  virtualbox-guest-kmp-desktop \
  virtualbox-guest-kmp-pae

exit 0
