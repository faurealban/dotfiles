#!/bin/zsh

show_help() {
    echo "Script used to uninstall pacman packages"
    echo
    echo "Usage: /path_to_this_file/uninstall.zsh [package name] [package name] ..."
}

# Get args
if [[ $# -eq 0 ]]; then
    show_help
    exit 1
fi

# Uninstall
sudo pacman -Rns $@
