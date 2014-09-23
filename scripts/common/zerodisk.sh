#!/usr/bin/env bash
set -x

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

sync
