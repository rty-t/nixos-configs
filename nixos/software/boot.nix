{pkgs, ...}: {
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 0;
    };

    tmp.cleanOnBoot = true;

    kernelPackages = pkgs.linuxPackages_xanmod_latest;
    kernelParams = [
      "quiet"
      "splash"
    ];
  };
}
