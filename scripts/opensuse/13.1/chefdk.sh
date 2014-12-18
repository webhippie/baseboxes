#!/usr/bin/env bash
set -x

zypper --non-interactive --gpg-auto-import-keys in \
  https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.3.5-1.x86_64.rpm

exit 0
