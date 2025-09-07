{ lib, config, pkgs, ... }:

{
  programs.amnezia-vpn.enable = true;
  
    systemd.services.amneziavpn-service = {
    description = "AmneziaVPN service";
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      ExecStart = "/run/current-system/sw/bin/AmneziaVPN-service";
      Restart = "always";
    };
  };
}