{ pkgs, config, inputs, spicetify-nix, ... }:

let

  spicePkgs = spicetify-nix.packages.${pkgs.system}.default;

in

{

  imports = [ spicetify-nix.homeManagerModule ];

  programs.spicetify =

    {

      enable = true;
      enabledExtensions = with spicePkgs.extensions; [

        fullAppDisplay
        shuffle
        hidePodcasts

      ];

    };

}
