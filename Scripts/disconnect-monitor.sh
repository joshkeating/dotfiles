#!/bin/bash
echo "Removing second monitor"
xrandr --output DP1 --off
feh --bg-scale /home/josh/Pictures/walls/trees-and-mist/DeskA.png
echo "Moniter removed"
exit 0
