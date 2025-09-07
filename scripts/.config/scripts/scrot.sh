#!/bin/bash

scrot -z -s -f -F ~/Pictures/screenshots/'%m-%d-%H:%M.png' -e 'xclip -selection clipboard -t image/png -i $f'
