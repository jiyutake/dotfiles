{ config, lib, , nixpkgs, pkgs, ... }:

{

  imports =

    [

      ./hardware-configuration.nix

    ];

  nix = {

    package = pkgs.nixUnstable;
    settings = {

      experimental-features = [ "nix-command" "flakes" ];

    };

  };

  nixpkgs.config.allowUnfree = true;

  boot.loader = {

    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;

  };

  networking = {

    hostName = "freedom";
    networkmanager.enable = true;

  };

  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver = {

      enable = true;
      displayManager.lightdm.enable = true;
      windowManager.i3.enable = true;
      windowManager.bspwm.enable = true;

      };

  services.xserver.xkb = {

    layout = "br";
    model = "pc104";
    options = "terminate:ctrl_alt_bksp";

  };

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  users.users.tiffany = {

    description = "Tiffany";
    isNormalUser = true;
    extraGroups = [ "wheel" ]; 

  };

  environment.systemPackages = with pkgs; [
    
    git
    wget
    curl
    home-manager
    neovim

  ];
  
  system = {

    copySystemConfiguration = true;
    stateVersion = "23.11";

  };

}

