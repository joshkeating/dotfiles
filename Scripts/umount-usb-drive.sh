#!/bin/bash

echo "Umounting drive from dir \"usb\""
umount  usb
echo "Removing dir \"usb\""
rmdir /home/josh/usb
echo "Done"
