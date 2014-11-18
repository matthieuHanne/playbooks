#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec dwm
