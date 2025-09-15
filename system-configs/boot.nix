{ lib, config, pkgs, ... }:

{
  boot = {
   loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
   };
   #kernelPackages = pkgs.linuxPackages_xanmod_latest;
   kernelPackages = pkgs.linuxPackages_zen;
  };
}