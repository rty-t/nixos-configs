{
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    settings = [
      {
        layer = "top";
        position = "top";

        modules-left = ["hyprland/workspaces" "hyprland/window"];
        modules-center = ["clock"];
        modules-right = ["pulseaudio" "network" "tray"];
      }
    ];
  };
}
