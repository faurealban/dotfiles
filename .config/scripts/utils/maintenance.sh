#!/bin/bash

yay

journalctl --vacuum-time=4weeks
paccache -r
paccache -ruk0

reflector --protocol https --verbose --latest 25 --sort rate --save /etc/pacman.d/mirrorlist
yay -Syyu

eos-rankmirrors --verbose
yay -Syyu

#sudo pacman -Rns $(pacman -Qdtq)
