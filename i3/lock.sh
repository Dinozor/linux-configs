#!/bin/bash

scrot ~/.i3/i3lock-screenshot.png
convert ~/.i3/i3lock-screenshot.png -blur 0x5 ~/.i3/i3lock-screenshot-blur.png
i3lock -i ~/.i3/i3lock-screenshot-blur.png
