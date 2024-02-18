{ config, pkgs, ... }:

{

  home = {

    file = {

      "${homedir}/.config/picom/picom.conf".text = ''

shadow = true;
shadow-radius = 12;
shadow-opacity = .5;
shadow-offset-x = -12;
shadow-offset-y = -12;
shadow-exclude = [
  "name = 'Notification'",
  "class_g = 'ddnet'",
  #"class_g = 'Eww'",
];
fading = true;
fade-in-step = 0.08;
fade-out-step = 0.08;
inactive-dim = 1
focus-exclude = [ "class_g = 'Eww'" ];
# NEVER uncomment this. NEVER!! or else i'll send you do hyprland discord server (you don't want to, right?)
# opacity-rule = [ "75:class_g = 'PrismLauncher'", "100:class_g = 'Navigator'", "95:class_g = 'Eww'", "95:class_g = 'St'", ]
corner-radius = 10
rounded-corners-exclude = [
  "window_type = 'dock'",
  "window_type = 'desktop'"
];
blur-method = "dual_kawase"
blur-strength = 10
blur-background = true
blur-background-frame = true
blur-background-fixed = false
blur-background-exclude = [
  "_GTK_FRAME_EXTENTS@:c"
];
daemon = true
backend = "glx";
dithered-present = false;
vsync = true;
mark-wmwin-focused = true;
mark-ovredir-focused = true;
d-corners = false
detect-rounded-corners = true;
pacity = false
detect-client-opacity = true;
log-level = "warn";
wintypes:
{
  tooltip = { fade = true; shadow = true; opacity = 0.9; focus = true; full-shadow = false; };
  dock = { shadow = false clip-shadow-above = false; }
  desktop = { shadow = true clip-shadow-above = false}
  dnd = { shadow = false; }
  popup_menu = { opacity = 1; full-shadow = false; }
  dropdown_menu = { opacity = 1; full-shadow = false; }
};

      
      '';

    };

  };

}
