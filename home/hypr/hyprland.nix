{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mainMod" = "SUPER";

      monitor = [",1920x1080@120,auto,1"];

      bind = [
        "$mainMod, T, exec, ghostty"
        "$mainMod, Q, killactive,"
      ];

      input = {
        kb_layout = "ru,us";
        follow_mouse = 1;
        kb_options = "grp:alt_shift_toggle";
      };
    };
  };
}
