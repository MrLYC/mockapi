#!/bin/sh

set -x
apk update

apk add git
apk add nodejs

git clone --depth=1 https://github.com/MrLYC/mockapi.git /mockapi
cd /mockapi
npm install
npm run build

apk del git
apk del npm
rm -rf /var/cache/apk/*
rm -f /build.sh || true
