#!/bin/bash

(setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap ru || setxkbmap us
#pgrep i3status | xargs --no-run-if-empty kill -s USR1 # tell i3status to update
killall -USR1 --ns 0 i3status
