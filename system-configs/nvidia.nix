{ lib, config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  services.xserver.videoDrivers = ["nvidia"];

  hardware = {
    graphics.enable = true;
    nvidia = {
     modesetting.enable = true;
     powerManagement = { 
      enable = false;
      finegrained = false;
     };
     open = true;
     nvidiaSettings = true;
     package = config.boot.kernelPackages.nvidiaPackages.latest;
    };
  };
}