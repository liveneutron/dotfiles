#!/bin/sh
swww img "$(ls ~/.walls/ | shuf -n 1 | xargs -I {} echo ~/.walls/{})" \
        --transition-type grow \
        --transition-pos 0.95,0.95 \
        --transition-duration 1.5 \
        --transition-fps 144

