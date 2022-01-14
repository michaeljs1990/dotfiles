#!/bin/sh
# bspwm + tmux + sxhkd cheatsheat
# http://la-familia-grande.de/index.php?site=bspwm

# Clean up the ugly X cursor 
# https://wiki.archlinux.org/title/Cursor_themes#Change_X_shaped_default_cursor
xsetroot -cursor_name left_ptr

# Setup cursor so it is more pretty
# https://wiki.gentoo.org/wiki/Cursor_themes
xrdb -merge ~/.Xresources

# From https://github.com/rudylorren/bspwm/blob/master/config/.xinitrc
polybar main &
feh --bg-max ~/.config/backgrounds/default.png &

sxhkd &
exec bspwm
