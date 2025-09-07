#!/usr/bin/sh

 read -r oldvalue < /sys/class/backlight/amdgpu_bl0/brightness
read -r savedbrightness < "$HOME"/.local/state/backlight

before_suspend() {
  if [ ! -f "$HOME"/.local/state/backlight ]; then
    touch "$HOME"/.local/state/backlight
  fi
  echo "$oldvalue" > "$HOME"/.local/state/backlight
  echo 10 > /sys/class/backlight/amdgpu_bl0/brightness
}

after_suspend() {
  echo "$savedbrightness" > /sys/class/backlight/amdgpu_bl0/brightness
}

while getopts "br" flag; do
  case $flag in
    b)
      before_suspend
      ;;
    r)
      after_suspend
      ;;
    *)
      exit 1
      ;;
  esac
done
