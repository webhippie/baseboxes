#!/usr/bin/env bash
set -x

zypper --non-interactive rm virtualbox-guest-kmp-default \
  virtualbox-guest-kmp-desktop virtualbox-guest-kmp-pae \
  virtualbox-guest-tools virtualbox-guest-x11
