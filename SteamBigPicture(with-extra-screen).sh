#!/bin/bash 
xrandr --output DVI-D-0 --off --auto
openbox &
steam -bigpicture
pkill -u $USER
