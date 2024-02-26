{ config, inputs, pkgs, ... }:

{

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [

    # efibootmgr
    # gparted
    # lutgen
    # ntfs3g

    inputs.matugen.packages.${system}.default

    chafa
    arandr
    btop
    ffcast
    mpc-cli
    mpd
    neovim
    slop
    neofetch
    vscodium
    playerctl

    ddnet
    runelite
    prismlauncher
    discord-canary
    spotify
    osu-lazer-bin
    figma-linux
    librewolf 

  ];

}
