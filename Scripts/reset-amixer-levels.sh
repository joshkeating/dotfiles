#!/bin/bash

# select the correct soundcard+device and set the level to 22%
amixer -c 0 cset numid=10,iface=MIXER,name='Headphone Mic Boost Volume' 22% >/dev/null

echo "Noise floor successfuly reset"
exit 0