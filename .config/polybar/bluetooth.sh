#!/bin/sh

TOGGLE=$HOME/.config/polybar/.bluetooth

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    rfkill unblock bluetooth
else
    rm $TOGGLE
    rfkill block bluetooth
fi
