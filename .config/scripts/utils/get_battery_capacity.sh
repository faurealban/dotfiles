#!/bin/bash

function battery() {
	cat /sys/class/power_supply/BAT1/capacity
}

echo "$(battery)"

