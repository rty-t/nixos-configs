
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
    ./networking.nix
    #./de-wm/plasma.nix
    ./de-wm/gnome.nix
    ./fonts.nix
    ./gaming.nix
    ];

  nix = { 
   optimise.automatic = true;
   settings.experimental-features = [ "nix-command" "flakes" ];
   gc = {
     automatic = true;
     dates = "weekly";
     options = "--delete-older-than 14d";
     };
   };
   
  system.stateVersion = "25.05"; 

}
