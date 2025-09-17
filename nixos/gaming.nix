{ config, pkgs, ... }:

let
  aagl = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
  # Or, if you follow Nixpkgs release 25.05:
  # aagl = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/release-25.05.tar.gz");
in
{
  imports = [
    aagl.module
  ];

  nix.settings = aagl.nixConfig;                    # Set up Cachix
  programs.anime-game-launcher.enable = true;       # genshin
  programs.anime-games-launcher.enable = false;     # all anime games
  programs.honkers-railway-launcher.enable = false; # hsr
  programs.honkers-launcher.enable = false;         # honkai
  programs.wavey-launcher.enable = false;           # waves
  programs.sleepy-launcher.enable = false;          # zzz

  programs.gamescope = {
      enable = true;
      capSysNice = true;
  };

  programs.steam = {
   enable = true;
   gamescopeSession.enable = true;
   remotePlay.openFirewall = true; 
   dedicatedServer.openFirewall = true; 
   localNetworkGameTransfers.openFirewall = true;
   extraCompatPackages = with pkgs; [proton-ge-bin proton-cachyos_x86_64_v3];
  };

  environment.systemPackages = with pkgs; [
     gamemode
     adwsteamgtk    # Custom themes for steam 
     prismlauncher  # Minecraft launcher
     #modrinth-app  # Minecraft launcher (not working)
     #osu-lazer     # Rhythm is just a *click* away 
     osu-lazer-bin  # Rhythm is just a *click* away (appimage ver with online score)
     #heroic        # Native GOG, Epic, and Amazon Games Launcher
     #lutris        # Open Source gaming platform for GNU/Linux
     #protonup-qt   # Install and manage Proton-GE and Luxtorpeda
     #bottles       # Easy-to-use wineprefix manager
     #mangohud      # Monitoring FPS (I have module mangohud.nix btw)
     #goverlay      # GUI settings for mangohud
     #mangojuice    # GUI settings for mangohud (gtk)
    ];
}