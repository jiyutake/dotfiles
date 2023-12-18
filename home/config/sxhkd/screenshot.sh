#!/bin/sh

lang_copied="Screenshot copied to clipboard"
filename="Screenshot $(date '+%Y-%m-%d, %R:%S')"
tempfilepath="/tmp/$filename.png"
screen_fragment=$(slop --highlight --tolerance=0 --color=0.3,0.4,0.6,0.4 -n -f '-g %g ')

ffcast -q "$screen_fragment" png "$tempfilepath"
xclip -selection clipboard -t "image/png" "$tempfilepath"
notify-send "$lang_copied"
