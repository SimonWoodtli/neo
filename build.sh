#!/bin/sh
set -uex pipefail

apt-get update -y && apt-get install -y jq autoconf libncurses-dev build-essential

curl -LJ -o /tmp/datasheet https://api.github.com/repos/st3w/neo/releases/latest
url=$(jq -r ".assets[] | select(.name | test(\"tar.gz\")) | .browser_download_url" < /tmp/datasheet)
pkgName=${url##*/}
name=${pkgName%%-*}
tag=$(jq -r ".tag_name" < /tmp/datasheet)
tag=${tag##*v}

curl -LJ -o "/tmp/$pkgName" "$url"
tar xf "/tmp/$pkgName"
cd "/tmp/$name-$tag"

sh configure && make && make install
