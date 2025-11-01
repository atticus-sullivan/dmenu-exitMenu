#!/bin/bash

sel="$(printf "%s\n%s\n%s\n%s" "Shutdown" "Logout" "Reboot" "Lock Screen" | dmenu -p "This is the exit Menu: ")"

case "$sel" in
	Shutdown)
		shutdown now
		;;
	Logout)
		bspc quit
		;;
	Reboot)
		reboot
		;;
	"Lock Screen")
		xset dpms force off ; loginctl lock-session ; i3lock -i /home/lukas/Pictures/wallpaper.png -enf
		;;
esac

exit
