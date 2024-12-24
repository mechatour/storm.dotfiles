#!/bin/bash

#Check first that there's an instance of swaylock running and turn on
#the screens. This script should be used in a timer such as swayidle
if [[ $(pgrep swaylock|wc -l) != 0 ]] 
then
    if [[ "$DESKTOP_SESSION" == "hyprland" ]]
    then
        hyprctl dispatch dpms on
    elif [[ "$DESKTOP_SESSION" == "sway" ]]
    then
        swaymsg "output * dpms on"
    fi
fi
