#!/bin/zsh

# directories in ~/.config
confs=(
    "firefox"
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

# specific configs
rm -rf ~/.mozilla/firefox/*.default-release/chrome
cp -r ./firefox/chrome/ ~/.mozilla/firefox/*.default-release/
cp ./zsh/home/.zshrc ~/.zshrc
cp ./zsh/home/.zlogin ~/.zlogin
cp ./other/.clang-format ~/.clang-format

echo ">> Done"
