{pkgs, ...}: {
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
    adwsteamgtk
    prismlauncher
    osu-lazer-bin # appimage ver with online score
    mangohud
    mangojuice
  ];
}
