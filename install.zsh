#!/bin/zsh

# Install yay
mkdir -p ~/gits/
cd ~/gits
git clone https://aur.archlinux.org/yay.git
cd ~/gits/yay
makepkg -si

# Install programms
sudo pacman -S brightnessctl deno discord dolphin dunst foot go grim hypridle hyprland hyprlock hyprpaper neovim npm openssh pacman-contrib pipewire pipewire-pulse reflector ripgrep rust rust-analyzer tree ttf-jetrbrains-mono-nerd unzip wireplumber wl-clipboard zsh
yay -S librewolf-bin

# Copy config directories in ~/.config
confs=(
    "foot"
    "hypr"
    "nvim"
    "scripts"
    "zsh"
)

for p in "${confs[@]}"; do
    rm -rf ~/.config/"$p"
    cp -r ./"$p" ~/.config/
done

# Copy other configs
cp ./zsh/home/.zshrc ~/.zshrc
cp ./zsh/home/.zlogin ~/.zlogin
cp ./other/.clang-format ~/.clang-format

# Change kernel
chsh -s /usr/bin/zsh

# Create new directory for screenshots
mkdir ~/Pictures

echo ">> Done"
