{
  lib,
  pkgs,
  ...
}: {
  # System packages
  environment.systemPackages = with pkgs; [
    f2fs-tools #for f2fs
    papirus-icon-theme
    warehouse
    usbutils
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
      "com.github.tchx84.Flatseal"
      "org.altlinux.Tuner"
      "io.github.swordpuffin.rewaita"
    ];
    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };
  };
}
