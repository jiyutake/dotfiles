{ config, pkgs, ... }:

{

  home = {

    packages = with pkgs; [

      bspwm
      sxhkd
      picom
      dunst
      eww
      feh
      rofi
      xclip

    ];
    

    file = {
      
      #"~/.config/picom/picom.conf".source = ./picom.conf;

    };

  };

}
