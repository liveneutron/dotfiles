#! /usr/bin/sh

current="$(pulsemixer --get-volume | cut -d ' ' -f1)"
notify-send -e -h string:x-canonical-private-synchronous:osd -h int:value:$current -t 3000 -u low -i " " "Volume:" "$current%"
