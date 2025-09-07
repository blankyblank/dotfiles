#!/bin/sh

cliphist wipe &
wl-paste --watch cliphist -max-items 30 store &
swww-daemon &
swayidle &
dunst &
dbus-update-activation-environment --all &
/usr/libexec/xdg-desktop-portal &
gnome-keyring-daemon --start --components=secrets &
