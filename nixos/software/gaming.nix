{pkgs, ...}: {
  powerManagement.cpuFreqGovernor = "performance";

  programs.gamescope = {
    enable = true;
    capSysNice = true;
    args = [
      "-W 1920 -H 1080 -r 120" # My monitor
      "--rt"
    ];
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
    heroic
    mangohud
    mangojuice
  ];
}
