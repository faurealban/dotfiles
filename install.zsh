#!/bin/zsh

# get args
IMPORT=false
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -i|--import)
            IMPORT=true
            shift;;
        *)
            echo ">> Unknown parameter: $1"
            exit 1;;
    esac
done

# configs in ~/.config
# echo ">> Copying configs in ~/.config"
# programs=("foot" "firefox" "hypr" "nvim" "scripts" "zsh")
#
# for p in "${programs[@]}"
# do
#     echo ">> $p"
#     rm -rf ./"$p"/
#     cp -rT ~/.config/"$p"/ ./"$p"/
# done

typeset -A paths
paths=(
    "./zsh/.zshrc" "~/.zshrc"
    "./zsh/.zlogin" "~/.zlogin"
)

for key in "${(@k)paths}"; do
    src="$key"
    dst="$paths[$key]"

    if [[ "$IMPORT" == true ]]; then
        src="$paths[$key]"
        dst="$key"
    fi

    echo "$src -> $dst"
done
