{ config, pkgs, ... }:

{
  
  imports = [

    ./user
    ./programs
  
  ];

  programs = {

    home-manager.enable = true;

  };

}
