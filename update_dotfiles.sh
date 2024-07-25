#!/bin/bash
#
# Script to copy dotfiles to git directories
#

rsync -a --mkpath --delete /home/zane/.config/kitty/* .config/kitty/

rsync -a --mkpath --delete /home/zane/.config/mako/* .config/mako/

rsync -a --mkpath --delete /home/zane/.config/sway/* .config/sway/

rsync -a --mkpath --delete /home/zane/.config/rofi/* .config/rofi/

rsync -a --mkpath --delete /home/zane/.config/tofi/* .config/tofi/

rsync -a --mkpath --delete /home/zane/.config/waybar/* .config/waybar/

rsync -a --mkpath --delete /home/zane/.config/swaylock/* .config/swaylock/

rsync -a --mkpath --delete /home/zane/.config/swayidle/* .config/swayidle/

rsync -a --mkpath --delete /home/zane/.config/qt6ct/* .config/qt6ct/

rsync -a --mkpath --delete /home/zane/.config/pyradio/themes/* .config/pyradio/themes/

rsync -a --mkpath --delete /home/zane/.themes/oomox-storm/* .themes/oomox-storm/

rsync -a --mkpath /home/zane/.config/Code/User/settings.json .config/Code/User/

rsync -a --mkpath /home/zane/.config/starship.toml .config/

rsync -a --mkpath /home/zane/.local/share/fonts/HackNerdFont* .local/share/fonts/
