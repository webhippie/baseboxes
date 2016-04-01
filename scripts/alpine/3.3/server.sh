#!/bin/sh
set -x

adduser -D deploy wheel
echo "deploy:p455w0rd!234" | chpasswd

addgroup deploy deploy

exit 0
