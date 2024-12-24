#!/bin/bash

# just turn the screens off
if [[ "$DESKTOP_SESSION" == "hyprland" ]]
then
    hyprctl dispatch dpms off
elif [[ "$DESKTOP_SESSION" == "sway" ]]
then
    swaymsg "output * dpms off"
fi
