#!/bin/bash

# just turn the screens on
if [[ "$DESKTOP_SESSION" == "hyprland" ]]
then
    hyprctl dispatch dpms on
elif [[ "$DESKTOP_SESSION" == "sway" ]]
then
    swaymsg "output * dpms on"
elif [[ "$DESKTOP_SESSION" == "niri" ]]
then
    niri msg output HDMI-A-1 on
    niri msg output DP-1 on
    niri msg output LVDS-1 on
fi
