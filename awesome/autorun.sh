#!/usr/bin/env bash

#Set Wallpaper
nitrogen --restore &

#Start Picom
picom &

#Enable Touchpad
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1 &

#Start VibrantLinux
vibrantLinux --hidden &

#Start Polybar
#$HOME/.config/polybar/launch.sh &

#Bind Super to Super+r for rofi
ksuperkey -e 'Super_L=Super_L|r'

