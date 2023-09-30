#!/bin/sh

poweroff=''
reboot=''
suspend=''
logout='󰍃'

chosen=$(printf "$poweroff\n$reboot\n$suspend\n$logout" | rofi -dmenu -i -theme "$HOME/.config/rofi/themes/powermenu-center.rasi")

case ${chosen} in
    "$poweroff") systemctl poweroff ;;
    "$reboot") systemctl reboot ;;
    "$suspend") systemctl suspend ;;
    "$logout") qtile cmd-obj -o cmd -f shutdown ;;
    *) exit 1 ;;
esac
