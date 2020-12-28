#!/bin/bash

PROC_LID=/proc/acpi/button/lid/LID/state
PROC_VAR_NAME=state

PROC_VAR=$(cat $PROC_LID |grep -m 1 $PROC_VAR_NAME|cut -d' ' -f 4-|tr -d '[:space:]');
if [[ "$PROC_VAR" == "closed" ]]; then
  xrandr --output eDP-1 --off
  echo "eDP-1 is now off"
fi
echo done
