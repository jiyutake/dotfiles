{ config, inputs, ... }:

{

  services.picom = {

    enable=false;
    activeOpacity = 1,0;
    backend = "glx";
    fade = ;
    fadeDelta =;
    fadeSteps = [ 0.03 0.03 ];
    opacityRules = [

      #

    ];

    settings = {

      rounded-corners-exclude = [];
      blur-background-exclude = [];
      blur-background = false;
      blur-background-frame = false;
      blur-background-fixed = false;
      glx-no-stencil = true;

    };

  };

}
