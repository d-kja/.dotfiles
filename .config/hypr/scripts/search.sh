#!/bin/bash
# Opens wofi in dmenu mod and waits for input. Then pushes the input to the query of the URL.

config="$HOME/.config/rofi/custom/search.rasi"
    
# Kill Wofi if already running before execution
if pgrep -x "rofi" >/dev/null; then
    pkill rofi
    exit 0
fi

echo "" | rofi -dmenu -config "$config" | xargs -I{} xdg-open "https://www.google.com/search?q={}"
