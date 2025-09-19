{
    programs.lutris = {
    enable = true;
    protonPackages = with pkgs; [
      proton-ge-bin
      proton-cachyos
      proton-cachyos_x86_64_v3
    ];
    steamPackage = "osConfig.programs.steam.package";
  };
}
