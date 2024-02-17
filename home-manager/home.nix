{ config, pkgs, ... }:

{
  
  imports = [

    #./packages.nix
    ./shell.nix
    #./wm.nix
  
  ];

  home = {

    username = "tiffany";
    homeDirectory = "/home/tiffany";
    stateVersion = "23.11";
    file = {

      # ".Xresources".source = config/Xresources;
      # "projects/hi.sh".text = ''
      # echo hi 
      # ''

      ".bashrc".text = ''
      [[ $- == *i* ]] || return

      HISTFILESIZE=100000
      HISTSIZE=9999

      shopt -s histappend
      shopt -s checkwinsize
      shopt -s extglob
      shopt -s globstar
      shopt -s checkjobs

      alias la="eza -la --group-directories-first"
      alias ls="eza -s=name -a --group-directories-first"
      alias rel="xrdb merge $HOME/.Xresources && kill -USR1 $(pidof st)"
      alias wal="feh --bg-fill --randomize $HOME/Pictures/wallpapers"

      eval "$(starship init bash)"

      if [[ ! -v BASH_COMPLETION_VERSINFO ]]; then
        . "/nix/store/g56hhyds7jc0m4z5yxc22nl2x096nbxa-bash-completion-2.11/etc/profile.d/bash_completion.sh"
      fi
      '';

    };

    sessionVariables = {

      EDITOR = "nvim";
      TERM = "st-256-color";

    };
  
  };
  
  programs = {

    home-manager.enable = true;

  };

}
