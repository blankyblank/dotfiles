#!/usr/bin/env sh

read -r current < /sys/class/backlight/amdgpu_bl0/brightness
read -r max < /sys/class/backlight/amdgpu_bl0/max_brightness

backlight_down() {
  if [ "$current" -gt 0 ]; then 
    down=$((current-1000))
    echo "$down" > /sys/class/backlight/amdgpu_bl0/brightness
  else 
      exit 0
  fi
}

backlight_up() {
  if [ "$current" -lt "$max" ]; then 
      up=$((current+1000))
      echo "$up" > /sys/class/backlight/amdgpu_bl0/brightness
  else 
      exit 0
  fi
}

while getopts "du" flag; do
  case $flag in
    d)
      backlight_down
      ;;
    u)
      backlight_up
      ;;
    *) exit 1
      ;;
  esac
done
