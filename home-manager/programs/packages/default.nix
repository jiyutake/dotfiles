{ config, pkgs, ... }:

{

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [

    # add extra packages here!

    # Optional Packages
    # efibootmgr
    # gparted
    # lutgen
    # ntfs3g

    chafa
    arandr
    btop
    ffcast
    neovim
    slop

    # Other Packages
    discord-canary
    figma-linux
    librewolf 

  ];

}
