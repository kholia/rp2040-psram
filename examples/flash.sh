#!/bin/bash
sudo stty -F /dev/ttyACM0 1200
echo waiting
while [ ! -d /media/$USER/RPI-RP2 ]; do sleep 0.1; done
sleep 0.5
if [ "$*" = "" ]; then echo rebooting; sudo picotool reboot; exit; fi
echo copying
cp $1 /media/$USER/RPI-RP2
echo done
