{ lib, config, ... }:

{
  networking = { 
    hostName = "cv01";
    networkmanager.enable = true;
  };
}