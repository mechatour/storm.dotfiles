#!/bin/bash

#Check first that there's an instance of swaylock running and turn off
#the screens. This script should be used in a timer such as swayidle
if [[ $(pgrep swaylock|wc -l) != 0 ]] 
then
    if [[ "$DESKTOP_SESSION" == "hyprland" ]]
    then
        hyprctl dispatch dpms off
    elif [[ "$DESKTOP_SESSION" == "sway" ]]
    then
        swaymsg "output * dpms off"
   elif [[ "$DESKTOP_SESSION" == "niri" ]]
   then
         niri msg output HDMI-A-1 off
         niri msg output DP-1 off
         niri msg output LVDS-1 off
    fi
fi
