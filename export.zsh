#!/bin/zsh

# configs in ~/.config
programs=("hypr" "nvim" "foot" "zsh")

for p in "${programs[@]}"
do
    rm -rf ~/.config/"$p"/
    cp -rT ./"$p"/ ~/.config/"$p"/
done

# other configs
cp ./zsh/.zshrc ~/.zshrc
cp ./zsh/.zlogin ~/.zlogin
