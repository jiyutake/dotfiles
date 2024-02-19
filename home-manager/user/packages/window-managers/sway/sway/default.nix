{ config, lib, pkgs, inputs, ... }:

# s/o for Nam! (github:chadcat7/crystal)
# atp i just stole it sorry lol

{

  wayland.windowManager.sway = {

    enable = true;
    xwayland = true;
    extraConfig = ''

      # SwayFX Configuration

      corner_radius 10

      shadows                  on
      shadow_offset            0 0
      shadow_blur_radius       20
      shadow_color             #000000BB
      shadow_inactive_color    #000000B0

      set $bg-color 	       #181820
      set $inactive-bg-color   #181820
      set $text-color          #ddddee
      set $inactive-text-color #bbbbcc
      set $urgent-bg-color     #181820

      client.focused           $bg-color $bg-color $text-color $bg-color 
      client.unfocused         $bg-color $bg-color $text-color $bg-color 
      client.focused_inactive  $bg-color $bg-color $text-color $bg-color
      client.urgent            $bg-color $bg-color $text-color $bg-color

      font                     BlexMono Nerd Font 12
      titlebar_separator       enable
      titlebar_padding         20
      title_align              center
      default_border           normal 2

      exec_always              --no-startup-id xrdb -merge ~/.Xresources & && kill -USR1 $(pidof st)
      exec                     --no-startup-id eww daemon & && eww r

    '';

    config = {

      terminal = "st";
      menu = "rofi -show drun";
      modifier = "Mod4";
      keycodebindings =
        let

          cfg = config.wayland.windowManager.sway.config;
	  mod = cfg.modifier;

	  #[[ hjkl
	  left = "43";
	  down = "44";
	  up = "45";
	  right = "46";
	  #]]

	in {

	  "${mod}+${left}" = "focus left";
	  "${mod}+${down}" = "focus down";
          "${mod}+${up}" = "focus up";
          "${mod}+${right}" = "focus right";

          "${mod}+Shift+${left}" = "move left";
          "${mod}+Shift+${down}" = "move down";
          "${mod}+Shift+${up}" = "move up";
          "${mod}+Shift+${right}" = "move right";

	};

    };

  };

}
