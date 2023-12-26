#!/usr/bin/env bash

#Download latest ISO
curl -s https://api.github.com/repos/CNC-Craft/makerspace-kinoite/releases/latest \
| grep "browser_download_url.*iso\"" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -O makerspace-kinoite-39-x86_64.iso -qi -

rm ./makerspace-kinoite-39-custom.iso
./build_ks_iso.sh MakerspaceKinonite-ostree-x86_64 ./kickstart/ks.cfg ./makerspace-kinoite-39-x86_64.iso ./makerspace-kinoite-39-custom.iso
