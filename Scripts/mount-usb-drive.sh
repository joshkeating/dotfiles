#!/bin/bash

echo "Caution, this only works with a single usb drive inserted"
mkdir -p /home/josh/usb
echo "Created dir \"usb\" in /home"
mount /dev/sdb1 usb
echo "Mounted drive to dir \"usb\""
echo "Done"