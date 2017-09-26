#!/bin/bash

# light -> dark

# quick and dirty color switching
# Colors
# dark - #1B2428
# light - #EEEEEE

sed -ie 's/*.foreground:   #1B2428/*.foreground:   #EEEEEE/g' ~/.Xresources
sed -ie 's/*.background:   #f8f8f8/*.background:   #1B2428/g' ~/.Xresources
sed -ie 's/*.cursorColor:  #1B2428/*.cursorColor:  #EEEEEE/g' ~/.Xresources

sed -ie 's/*.color0:       #34454C/*.color0:       #455A64/g' ~/.Xresources
sed -ie 's/*.color8:       #647C88/*.color8:       #78909C/g' ~/.Xresources
sed -ie 's/*.color1:       #D32F2F/*.color1:       #B32727/g' ~/.Xresources
sed -ie 's/*.color9:       #F44336/*.color9:       #F22010/g' ~/.Xresources
sed -ie 's/*.color2:       #4CAF50/*.color2:       #3F9343/g' ~/.Xresources
sed -ie 's/*.color10:      #81C784/*.color10:      #65BB69/g' ~/.Xresources
sed -ie 's/*.color3:       #FBC02D/*.color3:       #FAB406/g' ~/.Xresources
sed -ie 's/*.color11:      #FFEB3B/*.color11:      #EED500/g' ~/.Xresources
sed -ie 's/*.color4:       #1976D2/*.color4:       #1562AF/g' ~/.Xresources
sed -ie 's/*.color12:      #2196F3/*.color12:      #0C82E0/g' ~/.Xresources
sed -ie 's/*.color5:       #9575CD/*.color5:       #7E58C2/g' ~/.Xresources
sed -ie 's/*.color13:      #B39DDB/*.color13:      #9C80D0/g' ~/.Xresources
sed -ie 's/*.color6:       #00897B/*.color6:       #007468/g' ~/.Xresources
sed -ie 's/*.color14:      #4DB6AC/*.color14:      #409C93/g' ~/.Xresources
sed -ie 's/*.color7:       #BDBDBD/*.color7:       #A9A9A9/g' ~/.Xresources
sed -ie 's/*.color15:      #EEEEEE/*.color15:      #DADADA/g' ~/.Xresources



xrdb ~/.Xresources