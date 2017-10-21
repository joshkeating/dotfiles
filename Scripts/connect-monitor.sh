#!/bin/bash
echo "Connecting to moniter"
xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --auto --scale 1x1 --right-of eDP1

echo "Moniter connected"
