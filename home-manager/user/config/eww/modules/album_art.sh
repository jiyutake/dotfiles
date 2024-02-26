#!/usr/bin/env /bin/sh

ART=$(playerctl metadata mpris:artUrl;)

      if [ "$ART" == "" ]; then

        echo $HOME/.config/eww/assets/nocover.png

      else

        curl -s -o $HOME/.config/eww/assets/cover.png $ART
	echo $HOME/.config/eww/assets/cover.png

      fi
