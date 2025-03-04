#!/bin/sh

TOGGLE=$HOME/.config/polybar/.monitor

SCREENS=( $(xrandr | awk '$2=="connected"{print $1}') )
INTERNAL=${SCREENS[0]}
EXTERNAL=${SCREENS[1]}

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    xrandr --output $INTERNAL --off
    xrandr --output $EXTERNAL --auto --dpi 96
    i3-msg restart
else
    rm $TOGGLE
    xrandr --output $EXTERNAL --off
    xrandr --output $INTERNAL --auto --dpi 96
    i3-msg restart
fi
