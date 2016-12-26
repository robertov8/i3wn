#!/usr/bin/env bash
set -eu

[[ -z "$(pgrep i3lock)" ]] || exit
i3lock -e -i $HOME/i3/wallpaper/electriccolor/electriccolor.png -c 000000
#i3lock -n -u -t -i ${HOME}/i3/wallpaper/electriccolor/electriccolor.jpg