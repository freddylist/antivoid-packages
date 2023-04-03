#!/bin/sh

TAR=tar
command -v bsdtar >/dev/null && TAR=bsdtar
URL="https://github.com/freddylist/xtools-extra/archive/main.tar.gz"
FILE="xtools-extra.tar.gz"

mkdir -p /tmp/bin

if command -v wget >/dev/null; then
	wget -q -O "$FILE" "$URL" || exit 1
else
	xbps-fetch -o "$FILE" "$URL" || exit 1
fi

$TAR xf "$FILE" -C /tmp/bin --strip-components=1 || exit 1
