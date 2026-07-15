#!/bin/bash

options="⏻ Poweroff\n󰑓 Reboot\n Suspend\n Hibernate\n Logout"
#options="⏻ \n󰑓 \n \n \n "

chosen=$(echo -e "$options" | rofi -dmenu -location 3 -xoffset -36 -yoffset 44 -theme ~/.config/rofi/themes/power.rasi -p "")

case "$chosen" in
    *Poweroff) systemctl poweroff ;;
    *Reboot) systemctl reboot ;;
    *Suspend) systemctl suspend ;;
	*Hibernate) systemctl hibernate;;
    *Logout) bspc quit ;;
esac
