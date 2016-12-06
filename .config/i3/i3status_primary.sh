#!/bin/bash
# TL;DR this finds the end of the i3bar stream and tacks a new thing on there.
if [[ "$1" != "" ]];then
    cmd="i3status --config $1"
else
    cmd="i3status"
fi
LINEHEAD=""
$cmd | while :
do
        read line
        if [[ "$line" =~ ^,?\[\{  ]];then
            nline=`echo $line | sed 's/^,\?\[//'`
            if [[ "$line" =~ ^, ]];then
                LINEHEAD=","
            fi
            COLOR="#FFFFFF"
            # this is what gets prepended
            PREPEND=`/home/josh/.config/i3/nowplaying.py`
            echo "$LINEHEAD[{\"name\":\"run_watch\",\"instance\":\"any\",\"color\":\"$COLOR\",\"full_text\":\"`echo -n $PREPEND`\"},$nline" || exit 1
        else
            echo $line
        fi
done
