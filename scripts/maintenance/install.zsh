#!/bin/zsh

show_help() {
    echo "Script used to install pacman packages"
    echo
    echo "Usage: /path_to_this_file/install.zsh [package name] [package name] ..."
}

# Get args
if [[ $# -eq 0 ]]; then
    show_help
    exit 1
fi

# Install
sudo pacman -S $@
