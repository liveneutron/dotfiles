#!/bin/sh

if pgrep -x bemenu > /dev/null; then
    pkill -x bemenu
else
j4-dmenu-desktop --dmenu='bemenu --bottom --ignorecase --list 6 --line-height 10 --prompt "" --prefix "->" --fixed-height --no-spacing --scrollbar none --binding vim --vim-esc-exits --single-instance --border 2 --bdr "#93A1A1" --ff "#00D47D" --fb "#000000dd" --hf "#DE003F" --hb "#000000dd" --nb "#000000dd" --ab "#000000dd" --fn "Code New Roman 13"' --term='foot'
fi
