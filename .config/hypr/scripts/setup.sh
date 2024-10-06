##
# INITIAL SETUP
##

nm-applet --indicator &

swww-daemon &
swww img $HOME/.config/hypr/background/default.png &
#swww img $HOME/.config/hypr/background/option-02.jpeg &

waybar &
swaync &
ags &

wl-paste --type text --watch cliphist store
wl-paste --type image --watch cliphist store

hypridle &
pypr &
