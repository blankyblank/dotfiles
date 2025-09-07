#!/usr/bin/env bash

tmpimg=/tmp/lock.png
imlib2_grab $tmpimg ; corrupter -add 3 -bheight 20 -boffset 30 \
  -lag 0.004 -mag 2 -meanabber 3 -stdabber 4 -stdoffset 20 \
  -stride 1.0 $tmpimg $tmpimg

i3lock -eLi $tmpimg --force-clock --radius=48 --ring-width=3.8 \
   --inside-color=#00000000 --insidever-color=#00000000 \
   --insidewrong-color=#00000000 --{time,date}-color=#D7DAE0 \
   --greeter-color=#ABB2BF --verif-text="" --wrong-text="" \
   --ring-color=#C678DD --ringver-color=#61AFEF \
   --ringwrong-color=#E06C75 --keyhl-color=#fF7FFF \
   --bshl-color=#E06C75 --noinput-text=""  \
   --ind-pos="420:900" --time-pos="220:885" \
   --date-pos="220:930" --pass-{media,screen,volume}-keys \
   --{time,date,layout}-font="FiraCode Nerd Font" \
   --{verif,wrong,greeter}-font="FiraCode Nerd Font" \
   --time-size=35 --date-size=24 --greeter-size=28 \
   --date-str="%a, %D" --time-str="%I:%M:%S%P" \
   --redraw-thread
rm $tmpimg
