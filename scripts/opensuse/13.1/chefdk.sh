#!/usr/bin/env bash
set -x

zypper --non-interactive --gpg-auto-import-keys in \
  https://packages.chef.io/stable/el/7/chefdk-0.12.0-1.el7.x86_64.rpm

exit 0
