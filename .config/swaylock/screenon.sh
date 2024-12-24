#!/bin/bash

# just turn the screens on
if [[ "$DESKTOP_SESSION" == "hyprland" ]]
then
    hyprctl dispatch dpms on
elif [[ "$DESKTOP_SESSION" == "sway" ]]
then
    swaymsg "output * dpms on"
fi
