#!/bin/bash

#Check first that there's no instances of swaylock running already
if [[ $(pgrep swaylock|wc -l) == 0 ]] 
then
   swaylock -C ~/.config/sway/scripts/swaylock/config -f
fi
