#!/bin/bash

CURRENT=$(hyprshade current)

case "$CURRENT" in
    "")
        hyprshade on vib
        ;;
    "vib")
        hyprshade on blf
        ;;
    "blf")
        hyprshade off
        ;;
esac
