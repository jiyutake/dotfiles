{ config, packages, ... }:

{

  home = {

    file = {

      ".config/eww/".source = ./eww ;
      ".config/nvim/".source = ./nvim ;
      ".config/rofi/".source = ./rofi ;
      ".config/i3".source = ./i3 ;

    };

  };

}
