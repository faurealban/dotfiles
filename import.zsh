#!/bin/zsh

# configs in ~/.config
programs=("hypr" "nvim" "foot" "zsh")

for p in "${programs[@]}"
do
    rm -rf ./"$p"/
    cp -rT ~/.config/"$p"/ ./"$p"/
done

# other configs
cp ~/.zshrc ./zsh/.zshrc
cp ~/.zlogin ./zsh/.zlogin
