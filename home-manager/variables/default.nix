{ config, pkgs, ... }:

{

  home = {

    # You probably want to change those (if you're not called Tiffany, that is)
    # I'll fix it as soon as i get to know how
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
