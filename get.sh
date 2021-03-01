#!/bin/sh

[ "$EUID" -ne 0 ] && echo "\e[31mPlease, run as root\e[0m" && exit 1

URL="https://ppa.casali.no/5amu-debtools.list"
LST=/etc/apt/sources.list.d/5amu-debtools.list

curl -s --compressed "https://ppa.casali.no/key.gpg" | apt-key add -
curl -s --compressed -o "$LST" "$URL"

apt update
