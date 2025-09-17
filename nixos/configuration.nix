
{ config, lib, pkgs, ... }:

{
  imports =
    [ 
    /etc/nixos/hardware-configuration.nix
    ./fstrim.nix
    ./pipewire.nix
    ./sudo-rs.nix
    ./boot.nix
    ./nvidia.nix
    ./locale.nix
    ./pkgs.nix
    ./user.nix
    ./network/networking.nix
    ./network/hosts.nix
    ./network/zapre.nix
    #./de-wm/plasma.nix
    ./de-wm/gnome.nix
    ./fonts.nix
    ./gaming.nix
    ];

  nix = { 
   optimise.automatic = true;
   settings = {
    experimental-features = [ "nix-command" "flakes" ];
    auto-optimise-store = true;
    warn-dirty = false;
   };
   
   gc = {
     automatic = true;
     dates = "weekly";
     options = "--delete-older-than 14d";
     };
   };

  nixowos = {
   enable = true;
   os-release = {
     enable = true;
     changeName = true;
     changeId = false;
   };
  };
   
  system.stateVersion = "25.05"; 

}
