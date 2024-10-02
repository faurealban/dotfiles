#!/bin/zsh

# Delete orphan packages
sudo pacman -Qdtq | pacman -Rns -

# Update system
sudo pacman -Syu
