#!/bin/bash

for_window [title="Microsoft Teams Notification"] floating enable
for_window [class="Microsoft Teams - Preview"] floating enable

i3-msg "workspace 1; append_layout ~/.i3/workspace-1.json"
x-terminal-emulator &
x-terminal-emulator &
x-terminal-emulator &
x-terminal-emulator -e "cd lab/erp-hub-2 && docker-compose up" &

i3-msg "workspace 2; append_layout ~/.i3/workspace-2.json"
firefox &

i3-msg "workspace 3; append_layout ~/.i3/workspace-3.json; exec phpstorm"
#phpstorm &

i3-msg "workspace 8; exec MellowPlayer"

i3-msg "workspace 9; append_layout ~/.i3/workspace-9.json; exec thunderbird"
#thunderbird &

i3-msg "workspace 10; append_layout ~/.i3/workspace-10.json; exec teams"
#slack &

notify-send DONE "autostart is done"
