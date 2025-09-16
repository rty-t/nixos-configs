{ lib, config, pkgs, ... }:

{
    # System packages
    environment.systemPackages = with pkgs; [
     sudo-rs
     f2fs-tools #for f2fs
    ];

    # Unfree
    nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "nvidia-settings"
      "steam-unwrapped"
      "steam"
      #"minecraft"
      #"modrinth-app"
      #"osu-lazer"
      #"osu-lazer-bin"
    ];

    # Enable flatpak
    services.flatpak.enable = true;
}