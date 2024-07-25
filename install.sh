#!/bin/bash

# get args
POSITIONAL_ARGS=()
BACKUP=""
KOREAN=""

while [[ $# -gt 0 ]]; do
    case $1 in
        -b|--backup)
            BACKUP="-b"
            shift
            ;;
        -k|--korean)
            KOREAN="fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-hangul fcitx5-qt"
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

# install programs
sudo pacman -S "$KOREAN" grim hypridle hyprland hyprlock hyprpaper hyprshade kitty neovim obsidian ttf-jetbrains-mono-nerd tuigreet

# install config files
mv "$BACKUP" ./other/bash/.bash_profile ~/.bash_profile
mv "$BACKUP" ./other/bash/.bashrc ~/.bashrc
[[ "$KOREAN" != "" ]] && mv "$BACKUP" ./.config/fcitx5/ ~/.config/
mv "$BACKUP" ./.config/hypr/ ~/.config/
mv "$BACKUP" ./.config/kitty/ ~/.config/
mv "$BACKUP" ./.config/nvim/ ~/.config/
mv "$BACKUP" ./.config/obsidian/Preferences ~/.config/obsidian/Preferences
mv "$BACKUP" ./.config/scripts/ ~/.config/
mv "$BACKUP" ./other/greetd/config.toml /etc/greetd/config.toml
