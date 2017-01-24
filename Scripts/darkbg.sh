#!/bin/bash

# quick and dirty color switching
# Colors
# dark - #1B2428
# light - #eeeeee

sed -ie 's/*.foreground:   #1B2428/*.foreground:   #eeeeee/g' ~/.Xresources
sed -ie 's/*.background:   #f8f8f8/*.background:   #1B2428/g' ~/.Xresources
sed -ie 's/*.cursorColor:  #1B2428/*.cursorColor:  #eeeeee/g' ~/.Xresources

xrdb ~/.Xresources