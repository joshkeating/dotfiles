#!/bin/bash

# quick and dirty color switching
# Colors
# dark - #1B2428
# light - #eeeeee

sed -ie 's/*.foreground:   #eeeeee/*.foreground:   #1B2428/g' ~/.Xresources
sed -ie 's/*.background:   #1B2428/*.background:   #f8f8f8/g' ~/.Xresources
sed -ie 's/*.cursorColor:  #eeeeee/*.cursorColor:  #1B2428/g' ~/.Xresources

xrdb ~/.Xresources




