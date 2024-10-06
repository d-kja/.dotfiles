#!/bin/bash
# Rofi menu for Quick Edit / View of Settings (SUPER E)

# define your preferred text editor and terminal to use
editor=${EDITOR:-nano}
tty=kitty

configs="$HOME/.config/hypr"

menu(){
  printf "1. Environment variables\n"
  printf "2. Default programs\n"
  printf "3. Generic keybinds\n"
  printf "4. Launcher keybinds\n"
  printf "5. Monitors\n"
  printf "6. Hyprland base config\n"
  printf "7. Hyprland decorations\n"
  printf "8. Scripts\n"
}

main() {
    choice=$(menu | rofi -i -dmenu -config ~/.config/rofi/compact.rasi | cut -d. -f1)
    case $choice in
        1)
            $tty $editor "$configs/env"
            ;;
        2)
            $tty $editor "$configs/config/default_programs.conf"
            ;;
        3)
            $tty $editor "$configs/keybinds/launcher.conf"
            ;;
        4)
            $tty $editor "$configs/keybinds/generic.conf"
            ;;
        5)
            $tty $editor "$configs/config/monitor.conf"
            ;;
        6)
            $tty $editor "$configs/config/base.conf"
            ;;
        7)
            $tty $editor "$configs/config/decorations.conf"
            ;;
		    8)
            $tty $editor "$configs/scripts"
            ;;
        *)
            ;;
    esac
}

main
