#!/bin/bash
echo "Connecting to moniter"
xrandr --output VIRTUAL1 --off --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --mode 1920x1080 --pos 1920x0 --rotate normal

echo "Moniter connected"
