#!/bin/bash

# just turn the screens off
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
