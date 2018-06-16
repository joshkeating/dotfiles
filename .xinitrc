#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec i3

function swapKeys {
    xmodmap /home/josh/.speedswapper
}

swapKeys
