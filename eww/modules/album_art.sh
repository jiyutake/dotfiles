#!/bin/bash

ART=$(playerctl metadata -f {{mpris:artUrl}};)

      if [ "$ART" == "" ]; then

        echo $HOME/.config/eww/assets/nocover.png

      else

        curl -so $HOME/.config/eww/assets/cover.png $ART
	echo $HOME/.config/eww/assets/cover.png

      fi
