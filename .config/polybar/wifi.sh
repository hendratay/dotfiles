#!/bin/sh

TOGGLE=$HOME/.config/polybar/.wifi

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    nmcli radio wifi off
else
    rm $TOGGLE
    nmcli radio wifi on
fi
