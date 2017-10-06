#!/bin/bash

# dark -> light

# quick and dirty color switching
# Colors
# dark - #1B2428
# light - #EEEEEE

sed -ie 's/*.foreground:   #EEEEEE/*.foreground:   #1B2428/g' ~/.Xresources
sed -ie 's/*.background:   #1B2428/*.background:   #f8f8f8/g' ~/.Xresources
sed -ie 's/*.cursorColor:  #EEEEEE/*.cursorColor:  #1B2428/g' ~/.Xresources

sed -ie 's/*.color0:       #455A64/*.color0:       #34454C/g' ~/.Xresources
sed -ie 's/*.color8:       #78909C/*.color8:       #647C88/g' ~/.Xresources
sed -ie 's/*.color1:       #B32727/*.color1:       #D32F2F/g' ~/.Xresources
sed -ie 's/*.color9:       #F22010/*.color9:       #F44336/g' ~/.Xresources
sed -ie 's/*.color2:       #3F9343/*.color2:       #4CAF50/g' ~/.Xresources
sed -ie 's/*.color10:      #65BB69/*.color10:      #469e4a/g' ~/.Xresources
sed -ie 's/*.color3:       #FAB406/*.color3:       #fb8c00/g' ~/.Xresources
sed -ie 's/*.color11:      #EED500/*.color11:      #ef6c00/g' ~/.Xresources
sed -ie 's/*.color4:       #1562AF/*.color4:       #1976D2/g' ~/.Xresources
sed -ie 's/*.color12:      #0C82E0/*.color12:      #0c5f9a/g' ~/.Xresources
sed -ie 's/*.color5:       #7E58C2/*.color5:       #9575CD/g' ~/.Xresources
sed -ie 's/*.color13:      #9C80D0/*.color13:      #886cbc/g' ~/.Xresources
sed -ie 's/*.color6:       #007468/*.color6:       #00897B/g' ~/.Xresources
sed -ie 's/*.color14:      #409C93/*.color14:      #359188/g' ~/.Xresources
sed -ie 's/*.color7:       #A9A9A9/*.color7:       #BDBDBD/g' ~/.Xresources
sed -ie 's/*.color15:      #DADADA/*.color15:      #EEEEEE/g' ~/.Xresources

xrdb ~/.Xresources




