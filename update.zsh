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
    rm -rf ./"$p"
    cp -r ~/.config/"$p" ./
done

# Copy other configs
rm -rf ./zsh/home && mkdir ./zsh/home
cp ~/.zshrc ./zsh/home/
cp ~/.zlogin ./zsh/home/
cp ~/.clang-format ./other/

echo ">> Done"
