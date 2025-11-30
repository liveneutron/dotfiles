cd ~/.walls/ && 
fzf -m --preview 'chafa {} -s 58 -c full' \
    --bind 'enter:execute(
      swww img {} \
        --transition-type grow \
        --transition-pos 0.95,0.95 \
        --transition-duration 1.5 \
        --transition-fps 144
    )+abort' \
    --bind 'ctrl-d:execute(rm {})' --header 'ctrl+d - del.'
