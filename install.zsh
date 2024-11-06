#!/bin/zsh

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

# Install yay
if yay --version; then
else
    mkdir -p ~/gits/
    cd ~/gits
    git clone https://aur.archlinux.org/yay.git
    cd ~/gits/yay
    makepkg -si
fi

# Install programms
sudo pacman -S --needed brightnessctl deno docker docker-compose dolphin foot go grim hypridle hyprland hyprlock hyprpaper neovim noto-fonts-cjk npm openssh pacman-contrib pipewire pipewire-pulse reflector ripgrep rust rust-analyzer tree ttf-jetbrains-mono-nerd unzip virtualbox virtualbox-host-modules-arch wireplumber wl-clipboard xdg-desktop-portal-hyprland zsh
yay -S --needed droidcam librewolf-bin vesktop-bin zoom

# Change kernel
chsh -s /usr/bin/zsh

# Create new directory for screenshots
mkdir ~/Pictures

# First docker config if needed
if id -nG "$USER" | grep -qw "docker"; then
else
    # Enable and start docker.socket
    systemctl enable docker.socket
    systemctl start docker.socket

    # Add user to docker group
    sudo usermod -aG docker $USER

    echo ">> Docker config done. Reboot needed"
fi

# Environnement variables
ELECTRON_OZONE_PLATFORM_HINT=wayland
ELECTRON_USE_OZONE=1

echo ">> Done"
