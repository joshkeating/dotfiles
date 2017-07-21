#!/bin/bash

rm ~/scrots/tmp/*
scrot -s ~/scrots/tmp/clip.png
#scrot -s ~/scrots/tmp/`date +%Y-%m-%d_%H:%M:%S`.png
#cp ~/scrots/tmp/. ~/scrots/
echo "scrot taken"
eval $(xdotool getmouselocation --shell)
echo $X $Y
SCROTDIMW=`identify -format '%w' ~/scrots/tmp/clip.png`
SCROTDIMH=`identify -format '%h' ~/scrots/tmp/clip.png`
echo $SCROTDIMW
echo $SCROTDIMH
LOCX=$((X-SCROTDIMW-1))
LOCY=$((Y-SCROTDIMH-1))
echo $LOCX
echo $LOCY
feh ~/scrots/tmp -g +$LOCX+$LOCY

