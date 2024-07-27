#!/bin/bash

POSITIONAL_ARGS=()
MONTHLY="no"

while [[ $# -gt 0 ]]; do
    case $1 in
        -m|--monthly)
            MOUSE="yes"
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

# usual maintenance
printf "|> Yay"
sudo yay

# monthly maintenance
if [[ "$MONTHLY" == "yes" ]]; then
    # journal
    printf "\n|> Journal"
    journalctl --vacuum-time=4weeks

    # pacman cache
    printf "\n|> Pacman cache"
    paccache -r
    paccache -ruk0

    # Arch mirrors
    printf "\n|> Arch mirrors"
    reflector --protocol https --verbose --latest 25 --sort rate --save /etc/pacman.d/mirrorlist
    yay -Syyu

    # EndeavourOS mirrors
    printf "\n|> EndeavourOS mirrors"
    eos-rankmirrors --verbose
    yay -Syyu
fi

# remove orphan packages
# WARN: be sure to want to remove every listed package
#sudo pacman -Rns $(pacman -Qdtq)
