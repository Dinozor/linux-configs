#!/bin/bash

PROC_LID=/proc/acpi/button/lid/LID/state
PROC_VAR_NAME=state

PROC_VAR=$(cat $PROC_LID |grep -m 1 $PROC_VAR_NAME|cut -d' ' -f 4-|tr -d '[:space:]');
if [[ "$PROC_VAR" == "closed" ]]; then
  xrandr --output eDP-1 --off
  echo "eDP-1 is now off"
fi

# setxkbmap -layout us,ru
# setxkbmap -option 'grp:alt_shift_toggle'

~/.fehbg &
#feh --bg-scale ~/Pictures/PIA17563-1920x1200.jpg

exec --no-startup-id dunst


echo DONE
