{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mainMod" = "SUPER";
      "$browser" = "librewolf";
      "$terminal" = "ghostty";

      exec-once = [
        "waybar"
      ];

      monitor = [",1920x1080@120,auto,1"];

      bind = [
        "$mainMod, T, exec, $terminal"
        "$mainMod, W, exec, $browser"
        "$mainMod, C, exec, codium"
        "$mainMod, Q, killactive,"
        "$mainMod, D, exec, fuzzel"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"
        "$mainMod, mouse_down, workspace, e-1"
        "$mainMod, mouse_up, workspace, e+1"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      input = {
        kb_layout = "us,ru";
        follow_mouse = 1;
        kb_options = "grp:alt_shift_toggle";
      };

      misc = {
        disable_autoreload = true;
        disable_hyprland_logo = true;
        always_follow_on_dnd = true;
        layers_hog_keyboard_focus = true;
        animate_manual_resizes = false;
        enable_swallow = true;
        focus_on_activate = true;
        new_window_takes_over_fullscreen = 2;
        middle_click_paste = false;
      };

      decoration = {
        rounding = 10;
        active_opacity = 0.90;
        inactive_opacity = 0.90;
        fullscreen_opacity = 1.0;

        blur = {
          enabled = true;
          size = 3;
          passes = 2;
          brightness = 1;
          contrast = 1.4;
          ignore_opacity = true;
          noise = 0;
          new_optimizations = true;
          xray = true;
        };
      };
    };
  };
}
