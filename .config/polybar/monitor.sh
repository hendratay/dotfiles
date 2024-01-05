#!/bin/sh

TOGGLE=$HOME/.config/polybar/.monitor

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    xrandr --output HDMI-1 --mode 1920x1080 --same-as eDP-1
else
    rm $TOGGLE
    xrandr --output HDMI-1 --off
fi
