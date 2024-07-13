#!/bin/bash

connect_mouse ()
{
    bluetoothctl connect E9:E5:B0:D8:08:10 > /dev/null && echo "|> Mouse connected"
}

connect_headphones ()
{
    bluetoothctl connect 40:47:6A:20:C4:8E > /dev/null && echo "|> Headphones connected"
}

enable_bluetooth ()
{
    sudo systemctl start --quiet bluetooth && echo "|> Bluetooth enabled"
}

disable_bluetooth ()
{
    sudo systemctl stop --quiet bluetooth && echo "|> Bluetooth disabled"
}

POSITIONAL_ARGS=()

MOUSE="no"
HEADPHONES="no"
ALL="no"

while [[ $# -gt 0 ]]; do
    case $1 in
        -m|--mouse)
            MOUSE="yes"
            shift
            ;;
        -h|--headphones)
            HEADPHONES="yes"
            shift
            ;;
        -a|--all)
            ALL="yes"
            shift
            ;;
        -*|--*)
            echo "Unknown option $1"
            exit 1
            ;;
        *)
            POSITIONAL_ARGS+=("$1") # save positional arg
            shift # past argument
            ;;
    esac
done

if [[ $(systemctl is-active bluetooth) == "active" ]]; then
    if [[ "$HEADPHONES" == "yes" ]] || [[ "$ALL" == "yes" ]]; then
        connect_headphones
    elif [[ "$MOUSE" == "yes" ]] || [[ "$ALL" == "yes" ]]; then
        connect_mouse
    else
        disable_bluetooth
    fi
else
    enable_bluetooth

    if [[ "$HEADPHONES" == "yes" ]] || [[ "$ALL" == "yes" ]]; then
        connect_headphones
    elif [[ "$MOUSE" == "yes" ]] || [[ "$ALL" == "yes" ]]; then
        connect_mouse
    fi
fi
