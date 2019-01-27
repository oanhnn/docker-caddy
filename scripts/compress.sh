#!/bin/sh

# upx version
VERSION=${VERSION:-"3.95"}

# get official upx binary
if [[ ! -f /usr/bin/upx ]]
then
    curl -sSL --fail -o - https://github.com/upx/upx/releases/download/v${VERSION}/upx-${VERSION}-amd64_linux.tar.xz \
        | tar --no-same-owner -C /usr/bin/ -xJ --strip-components 1 upx-${VERSION}-amd64_linux/upx
fi

# compress
/usr/bin/upx --ultra-brute ${1:-"/usr/bin/example"}
