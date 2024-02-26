{ config, pkgs, ... }:

{

  imports = [

    ./sway

  ];

  home = {

    packages = with pkgs; [

      # Note that ags is not declared here
      #[[ $ nix profile install github:Aylur/ags ]]

      dunst
      rofi
      swaybg
      swaysettings # don't judge me...
      wl-clipboard

    ];

  };

}
