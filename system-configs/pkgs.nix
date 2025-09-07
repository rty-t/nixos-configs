{ lib, config, pkgs, ... }:

{
    # System packages
    environment.systemPackages = with pkgs; [
     sudo-rs
     f2fs-tools #for f2fs
     gamemode
     prismlauncher
    ];

    # Unfree
    nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "nvidia-settings"
      "steam-unwrapped"
      "steam"
    ];

    # Enable flatpak
    services.flatpak.enable = true;
}