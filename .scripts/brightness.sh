#!/usr/bin/sh

current="$(brightnessctl -m | cut -d, -f4 | sed 's/%//')"
notify-send -e -h string:x-canonical-private-synchronous:osd -h int:value:$current -t 3000 -u low -i " " "Brightness:" "$current%"
