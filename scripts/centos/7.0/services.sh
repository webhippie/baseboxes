#!/usr/bin/env bash
set -x

systemctl enable sshd
systemctl enable network

exit 0
