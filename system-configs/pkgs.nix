{ lib, config, pkgs, ... }:

{
    # System packages
    environment.systemPackages = with pkgs; [
     sudo-rs
     f2fs-tools #for f2fs
     gamemode
     prismlauncher
    ];

    # Enable flatpak
    services.flatpak.enable = true;
}