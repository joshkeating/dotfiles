#!/bin/bash

echo "Caution, this only works with a single usb drive inserted"

if [ -d "usb" ]; then

    if [ "$(ls -A "\/usb") "]; then
        echo "\"\/usb\" is not empty"
        echo "Aborting..."
        exit 1
    else
        echo "The \"\/usb\" directory already exists and is empty"
        echo "Continuing..."

        echo "Attempting to mount drive to \"\/usb\""

        if $(mount /dev/sdb1 usb); then
            echo "Mount successful."
        else
            echo "Mount failed."
            exit 1
        fi
    fi
else

    mkdir -p /home/josh/usb
    echo "Created dir \"usb\" in ~\/"
    echo "Attempting to mount drive to \"\/usb\""
    
    if $(mount /dev/sdb1 usb); then
        echo "Mount successful."
    else
        echo "Mount failed."
        exit 1
    fi

fi


