{pkgs, ...}: {
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    tmp.cleanOnBoot = true;
    kernelPackages = pkgs.linuxPackages_xanmod_latest; # Xanmod kernel
    #kernelPackages = pkgs.linuxPackages_zen;                                                  # Zen kernel
    #kernelPackages = pkgs.linuxPackages_lqx;                                                  # Liquorix kernel
    #kernelPackages = pkgs.linuxPackages_latest;                                               # Default kernel
    #kernelPackages = pkgs.linuxPackages_cachyos.cachyOverride {mArch = "GENERIC_V3";};        # CachyOS kernel
  };
}
