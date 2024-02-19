{ config, pkgs, ... }:

{

  home = {

    username = "tiffany";
    homeDirectory = "/home/tiffany";
    stateVersion = "23.11";
    sessionVariables = {

      EDITOR="nvim";
      TERM="st-256color";

      HOME_WALLPAPERS_DIR="$HOME/Pictures/wallpapers";

    };

  };

}
