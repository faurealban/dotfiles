#!/bin/zsh

# Update mirrors
reflector --protocol https --verbose --latest 25 --sort rate --save /etc/pacman.d/mirrorlist

# Update system
sudo pacman -Syu

# Clean journal
journalctl --vacuum-time=4weeks

# Clean pacman cache
paccache -ruk0
