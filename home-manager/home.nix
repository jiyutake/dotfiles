{ config, pkgs, ... }:

{
  
  imports = [

    ./variables.nix
    ./shell.nix
    ./programs
  
  ];

  programs = {

    home-manager.enable = true;

  };

}
