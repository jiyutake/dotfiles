{ config, pkgs, ... }:

{

  home = {

    file = {

      "${homedir}/.config/picom/picom.conf.text" ='' '';

    };

  };

}
