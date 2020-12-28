#!/bin/bash

get_kbdlayout() {
  setxkbmap -query | grep -oP 'layout:\s*\K(\w+)'
}

i3status | while :
do
  read line
  block="{\"full_text\":\"$(get_kbdlayout)\"}"
  echo "${line/\[\{/\[$block,\{}"|| exit 1
done
