#!/bin/sh
# this file should be executed with the shell's rc file.
# i do this for convenience, since just throwing it on the bspwm rc file won't do the job properly.
# ik i should find better solutions to it but i have absolutely no ideas wwhatsoever

# Borders (incase you want any)
#border="#eff1f5" #latte
border="#1e2127" #onedark
#border="#161616" #oxocarbon

bspc config normal_border_color $border
bspc config focused_border_color $border 
bspc config border_width 0

# Eughhh..
exec eww open bar
