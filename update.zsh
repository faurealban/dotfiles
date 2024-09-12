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
    rm -rf ./"$p"
    cp -r ~/.config/"$p" ./
done

# specific configs
cp -r ~/.mozilla/firefox/*.default-release/chrome/ ./firefox/
rm -rf ./zsh/home && mkdir ./zsh/home
cp ~/.zshrc ./zsh/home/
cp ~/.zlogin ./zsh/home/
cp ~/.clang-format ./other/

echo ">> Done"
