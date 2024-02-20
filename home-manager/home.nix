{ config, pkgs, ... }:

{
  
  imports = [

    ./user
    ./hosts
  
  ];

  programs = {

    home-manager.enable = true;

  };

}
