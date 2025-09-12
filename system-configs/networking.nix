{ lib, config, ... }:

{
  networking = { 
    hostName = "cv01";
    networkmanager.enable = true;
    hosts = {
      "204.12.192.222" = [ "claude.ai" ];
    };
  };
}