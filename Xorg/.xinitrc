xrdb -merge ~/.Xressources
RC="$HOME/.config/Xorg/.conkyrc_dzen"
## set statusbar ##
(sleep 1 && conky -d -c $RC | dzen2 -fg '#FFFFFF' -bg '#222222' -fn '-*-fixed-bold-*-*-*-13-*-*-*-*-*-*-*' -ta r -x 500 -h 15) &
# Options de dzen2
# -fg = foreground color
# -bg = background color
# -fn = font 
# -ta = alignement of title window content: l(eft), c(enter), r(ight)
# -x = x position
exec dwm

