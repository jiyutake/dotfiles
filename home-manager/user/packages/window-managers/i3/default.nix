{ config, ... }:

{

  xsession.windowManager.i3 = {

    enable = true;
    #package = {};
    config = ''

      # i3 configuration file

      set $mod Mod4
      set $term st
      set $refresh_i3status killall -SIGUSR1 i3status
      
      font pango:Jua Nerd Font 24

      bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
      bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
      bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
      bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status
      
      floating_modifier $mod
      tiling_drag modifier titlebar
      
      bindsym $mod+Return exec $term

      bindsym $mod+shift+q kill
      bindsym $mod+d exec --no-startup-id rofi -show drun

      bindsym $mod+f fullscreen toggle

      bindsym $mod+space floating toggle

      set $ws1 "1"
      set $ws2 "2"
      set $ws3 "3"
      set $ws4 "4"
      set $ws5 "5"
      bindsym $mod+1 workspace number $ws1
      bindsym $mod+2 workspace number $ws2
      bindsym $mod+3 workspace number $ws3
      bindsym $mod+4 workspace number $ws4
      bindsym $mod+5 workspace number $ws5

      bindsym $mod+Shift+1 move container to workspace number $ws1
      bindsym $mod+Shift+2 move container to workspace number $ws2
      bindsym $mod+Shift+3 move container to workspace number $ws3
      bindsym $mod+Shift+4 move container to workspace number $ws4
      bindsym $mod+Shift+5 move container to workspace number $ws5

      bindsym $mod+Shift+c reload
      bindsym $mod+Shift+r restart
      bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'Exit i3? X will b gone' -B 'Yes, exit i3' 'i3-msg exit'"

      set $unfocused_border #181820
      set $focused_border #181820
 
      client.focused          #222230 #222230 #222230 #ffffff #181820
      client.focused_inactive #222230 #222230 #222230 #ffffff #181820
      client.unfocused        #222230 #222230 #222230 #ffffff #181820
      client.placeholder      #222230 #222230 #222230 #ffffff #181820
      client.background       #222230 #222230 #222230 #ffffff #181820

    '';

  };

}
