#!/bin/bash

# grab bag of external moniter positions:
EXR_RIGHT='xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --mode 1920x1080 --pos 1920x0 --rotate normal'
EXR_LEFT='xrandr --output eDP1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP1 --mode 1920x1080 --pos 0x0 --rotate normal'
EXR_BOTTOMLEFT='xrandr --output eDP1 --primary --mode 1920x1080 --pos 1920x312 --rotate normal --output DP1 --mode 1920x1080 --pos 0x1080 --rotate normal'
EXR_BOTTOMRIGHT='xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --mode 1920x1080 --pos 1920x1080 --rotate normal'
EXR_LABS='xrandr --output eDP1 --primary --mode 1920x1080 --pos 784x1440 --rotate normal --output DP1 --mode 3440x1440 --pos 0x0 --rotate normal'

# set the default position for the external moniter
defaultPosition=$EXR_RIGHT

# if first passed parameter is unset or null, set the expanded value of optionalArg
# to $defaultPosition. Otherwise, the value of the first parameter is substituted
optionalArg=${1:-$defaultPosition}


# check to see if external moniter (DP1) is avalible
function isConnected {
    xrandr | grep "^DP1 connected"
}

# run xrander to initiate the connection
function connectMoniter {

	# change moniter outputs based on optional parameters (switch statement)
    case $optionalArg in
	   "labs") $EXR_LABS;;
	   "left") $EXR_LEFT;;
	   "right") $EXR_RIGHT;;
	   *) $optionalArg;;
	esac
}

# reset wallpaper with feh to fix the background issue
function updateWallpaper {
	feh --bg-scale /home/josh/Pictures/walls/macos-walls/Abstract\ 9.jpg
}

# keep polling xrander to see if external moniter shows up
while [ true ]; do
	
	if [[ $(isConnected -A) ]]; then
    	echo "output avalible!"
    	connectMoniter
    	updateWallpaper
    	# reload polybar in place
    	nohup $HOME/.config/polybar/launch.sh &>/dev/null &
    	echo "moniter connected successfully!"

    	exit 0

	else
	    echo "no outputs found, trying again"
	fi

	sleep 1s
 
done
