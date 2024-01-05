#!/bin/sh

TOGGLE=$HOME/.config/polybar/.bluetooth

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    rfkill unblock 0
else
    rm $TOGGLE
    rfkill block 0
fi
