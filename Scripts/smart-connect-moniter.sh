#!/bin/bash

# check to see if external moniter (DP1) is avalible
function isConnected {
    xrandr | grep "^DP1 connected"
}

# run xrander to initate the connection
function connectMoniter {
	xrandr --output eDP1 --primary --mode 1920x1080 --pos 1920x312 --rotate normal --output DP1 --mode 1920x1080 --pos 0x1080 --rotate normal
}

# reset wallpaper with feh to fix the background issue
function updateWallpaper {
	feh --bg-scale /home/josh/Pictures/walls/trees-and-mist/DeskA.png
}

# keep polling xrander to see if external moniter shows up
while [ true ]; do
	
	if [[ $(isConnected -A) ]]; then
    	echo "output avalible!"
    	connectMoniter
    	updateWallpaper
    	echo "moniter connected successfully!"
    	exit 0

	else
	    echo "no outputs found, trying again"
	fi

	sleep 1s
 
done
