#!/bin/bash
echo "Removing second monitor"
xrandr --output DP1 --off
feh --bg-scale /home/josh/Pictures/walls/macos-walls/Abstract\ 9.jpg
echo "Moniter removed"
# restart polybar in place
nohup $HOME/.config/polybar/launch.sh &>/dev/null &
exit 0
