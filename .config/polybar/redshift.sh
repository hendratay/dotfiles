#!/bin/sh

TOGGLE=$HOME/.config/polybar/.redshift

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    redshift -P -O 4500
else
    rm $TOGGLE
    redshift -P -O 6000
fi
