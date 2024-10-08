#!/bin/zsh

# Update system
sudo pacman -Syu

# Update mirrors
sudo reflector --protocol https --verbose --latest 25 --sort rate --save /etc/pacman.d/mirrorlist

# Update system
sudo pacman -Syu

# Clean journal
sudo journalctl --vacuum-time=4weeks

# Clean pacman cache
sudo paccache -ruk0

# Update system
sudo pacman -Syu
