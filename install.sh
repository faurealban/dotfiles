#!/bin/bash

POSITIONAL_ARGS=()
BACKUP="no"

while [[ $# -gt 0 ]]; do
    case $1 in
        -b|--backup)
            BACKUP="yes"
            shift
            ;;
        -*|--*)
            echo "|> Unknown option $1"
            exit 1
            ;;
        *)
            POSITIONAL_ARGS+=("$1")
            shift
            ;;
    esac
done

if [[ "$BACKUP" == "yes" ]]; then
    cp -r ~/.config ~/.config_backup_fa
    # TODO
fi

# install programs
sudo pacman -S fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-hangul fcitx5-qt grim hypridle hyprland hyprlock hyprpaper hyprshade kitty neovim obsidian ttf-jetbrains-mono-nerd tuigreet

# install config files
# TODO
