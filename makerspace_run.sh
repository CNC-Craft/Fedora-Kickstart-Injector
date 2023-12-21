#!/usr/bin/env bash
wget https://github.com/CNC-Craft/makerspace-kinoite/releases/download/auto-iso/makerspace-kinoite-39-x86_64-20231220.iso -nc
rm ./makerspace-kinoite-39-custom.iso
./build_ks_iso.sh MakerspaceKinonite-ostree-x86_64 ./kickstart/ks.cfg ./makerspace-kinoite-39-x86_64-20231220.iso ./makerspace-kinoite-39-custom.iso
