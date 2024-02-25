#!/usr/bin/env /bin/sh

ART=$(playerctl metadata -f {{mpris:artUrl}};)

      if [ "$ART" == "" ]; then

        echo ~tiffany/.config/eww/assets/nocover.png

      else

        curl -so $HOME/.config/eww/assets/cover.png $ART
	echo $HOME/.config/eww/assets/cover.png

      fi
