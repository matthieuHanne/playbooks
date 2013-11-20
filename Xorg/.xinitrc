xrdb -merge ~/.Xressources

RC="$HOME/.config/Xorg/.conkyrc_dzen"
FG="white"
BG="#404240"
ALIGN="left"
WIDTH="1024"
HEIGHT="12"
FONT="-*-terminus-medium-*-*-*-12-*-*-*-*-*-*-*"
XPOS="0"
YPOS="O"
 
conky -d -c $RC | dzen2 -fg $FG -bg $BG -ta $ALIGN -w $WIDTH -h $HEIGHT -x $XPOS -y $YPOS -fn $FONT -dock &
tint2 &
exec echinus

