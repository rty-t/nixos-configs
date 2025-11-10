{pkgs, ...}: {
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
    extraCompatPackages = with pkgs; [
      proton-ge-bin
      proton-cachyos_x86_64_v3
    ];
  };

  programs.gamemode = {
    enable = true;
    enableRenice = true;
    settings = {
      general = {
        desiredgov = "performance";
        renice = 10;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    prismlauncher
    osu-lazer-bin # appimage ver with online score
    heroic
    mangohud
    mangojuice
  ];
}
