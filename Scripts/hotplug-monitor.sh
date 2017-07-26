#! /usr/bin/bash
# this is not done yet!


export DISPLAY=:0
export XAUTHORITY=/home/josh/.Xauthority

function connect(){
    xrandr --output DP1 --right-of eDP1 --preferred --primary --output eDP1 --preferred 
}
  
function disconnect(){
      xrandr --output DP1 --off
}
   
xrandr | grep "HDMI1 connected" &> /dev/null && connect || disconnect