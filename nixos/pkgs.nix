{
  lib,
  pkgs,
  ...
}: {
  # System packages
  environment.systemPackages = with pkgs; [
    f2fs-tools #for f2fs
    warehouse
  ];

  # Unfree
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "nvidia-settings"
      "steam-unwrapped"
      "steam"
      "osu-lazer"
      "osu-lazer-bin"
    ];

  # flatpak
  services.flatpak = {
    enable = true;
    packages = [
      "com.github.tchx84.Flatseal"
      "org.vinegarhq.Sober"
    ];
    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };
  };
}
