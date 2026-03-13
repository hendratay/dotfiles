#!/bin/bash

# Configuration
THRESHOLD=15

# Get battery status
BATTINFO=$(acpi -b)

if [[ $(echo $BATTINFO | grep -c "Discharging") -eq 1 ]]; then
    PERCENT=$(echo $BATTINFO | awk -F'[,:%]' '{print $3}' | tr -d ' ')
    if [ "$PERCENT" -le "$THRESHOLD" ]; then
    	notify-send -u critical -i battery-caution "Low Battery" "Battery is at <b>${PERCENT}%</b>, charge your device."
    fi
fi

