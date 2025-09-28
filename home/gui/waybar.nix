{
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    settings = [
      {
        layer = "top";
        position = "top";
        spacing = 7;
        margin = "0";

        modules-left = ["hyprland/workspaces"];
        modules-center = ["clock"];
        modules-right = ["tray" "hyprland/language" "network" "pulseaudio"];

        clock = {
          format = "{:%b %d  %H:%M}";
        };

        network = {
          format-wifi = "{icon}";
          format-icons = ["󰤭 " "󰤯 " "󰤟 " "󰤢 " "󰤥 " "󰤨 "];
        };

        pulseaudio = {
          format = "{icon}";
          format-icons = ["󰕿 " "󰖀 " "󰕾 "];
        };

        "hyprland/language" = {
          format = "{}";
          format-en = "en ";
          format-ru = "ru ";
        };
      }
    ];

    style = ''
      * {
      border: none;
      border-radius: 0;
      font-family: JetBrainsMono Nerd Font;
      font-size: 14px;
      }
      window#waybar {
       background: #000000;
       color: #ffffff;
      }
    '';
  };
}
