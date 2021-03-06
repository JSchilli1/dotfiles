#!/usr/bin/env dash
# ewmh_workspaces.sh - output workspaces

. ~/.config/lime/colors.conf

xprop -root -spy | while read -r line; do
#	for workspace in $(jot $(xprop -root _NET_NUMBER_OF_DESKTOPS | awk '{print $3}')); do
	for workspace in 1 2 3 4; do
		if [ "$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')" = "${workspace}" ]; then
			echo -n "%{B-}%{F-} ${workspace} %{B-}%{F-}"
		else
			echo -n "%{B-}%{F$c0} ${workspace} %{B-}%{F-}"
		fi
	done
	echo
done
