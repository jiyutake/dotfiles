{ config, ... }:

{

  packages = with pkgs; [

    # eww-unstable;

  ];

  home = {

    file = {

      ".config/eww/widgets/sidemenu/eww.yuck".text = ''

        # eww.yuck

      ''

    };

  };

}