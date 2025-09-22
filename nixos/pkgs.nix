{
  lib,
  pkgs,
  ...
}: {
  # System packages
  environment.systemPackages = with pkgs; [
    f2fs-tools #for f2fs
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
      "io.github.kolunmi.Bazaar"
      "io.github.flattool.Warehouse"
      "com.github.tchx84.Flatseal"
    ];
    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };
  };
}
