# uses i3lock, scrot, and imagemagick to display a pixelated screen with a lock icon
# unlocks after password input

scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
convert /home/josh/Pictures/icons/lock-open.png -scale 89% /tmp/lock-icon.png
convert /tmp/screen.png /tmp/lock-icon.png -gravity center -composite -matte /tmp/screen.png
i3lock -u -i /tmp/screen.png
