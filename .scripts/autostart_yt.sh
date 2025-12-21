#! /usr/bin/sh

kill -9 $(ps aux | grep server.py | head -n 1 | cut -d " " -f4)
source ~/yt-local/env/bin/activate
python ~/yt-local/server.py
