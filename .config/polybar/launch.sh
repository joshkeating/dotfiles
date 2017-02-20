#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# polybar Bar

MONITOR=eDP-1 polybar Bar  & MONITOR=DP-1 polybar Bar


echo "Bars launched..."
