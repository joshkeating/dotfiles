#!/bin/bash

# Removes old and unused kernels

echo $(dpkg --list | grep linux-image | awk '{ print $2 }' | sort | sed -n '/'`uname -r`'/q;p') $(dpkg --list | grep linux-headers | awk '{ print $2 }' | sort -n | sed -n '/'"$(uname -r | sed "s/\([0-9.-]*\)-\([^0-9]\+\)/\1/")"'/q;p') | xargs sudo apt-get -y purge