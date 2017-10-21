#!/bin/bash

echo -n "Are you sure you want to unmount \"/usb\" (y/n)? "

read answer
if echo "$answer" | grep -iq "^y" ; then
    
    echo "Attempting to unmount drive from dir \"/usb\""
    if $(umount usb); then
        echo "Unmount successful."
        rmdir /home/josh/usb
        exit 1
    else
        echo "Unmount failed, exiting"
        exit 1
    fi

else
    echo "Exiting"
    exit 1
fi

