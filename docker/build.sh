#!/bin/sh

set -x
apk update

apk add git node

git clone --depth=1 https://github.com/MrLYC/mockapi.git /mockapi
cd /mockapi
npm install
npm run build

apk del git npm
rm -rf /var/cache/apk/*
rm -f /build.sh || true
