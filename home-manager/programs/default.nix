{ config, pkgs, ... }:

{
  
  imports = [

    # Window manager
    ./bspwm

    # User packages
    ./packages

  ];

}
