{ config, pkgs, ... }:

{
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
   extraCompatPackages = with pkgs; [
     proton-ge-bin 
     proton-cachyos_x86_64_v3
   ];
  };

  environment.systemPackages = with pkgs; [
     gamemode
     adwsteamgtk    # Custom themes for steam 
     prismlauncher  # Minecraft launcher
     #osu-lazer     # Rhythm is just a *click* away 
     osu-lazer-bin  # Rhythm is just a *click* away (appimage ver with online score)
     #heroic        # Native GOG, Epic, and Amazon Games Launcher
     #lutris        # Open Source gaming platform for GNU/Linux
     #bottles       # Easy-to-use wineprefix manager
     #mangohud      # Monitoring FPS (I have module mangohud.nix btw)
     #mangojuice    # GUI settings for mangohud (gtk)
    ];
}
