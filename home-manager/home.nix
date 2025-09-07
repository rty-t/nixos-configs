{ config, pkgs, ... }:

{
  imports = [
  ./fastfetch.nix
  #./kitty.nix
  ./fish.nix
  ./helix.nix
  ./mangohud.nix
  ./ghostty.nix
  ./vesktop.nix
  ./vscode.nix
  ./zoxide.nix
  ./eza.nix
  ./skim.nix
  ./git.nix
  ];

  home.username = "pyndys";
  home.homeDirectory = "/home/pyndys";

  home.stateVersion = "25.05"; 

  home.packages = with pkgs; [
     # Some apps
     telegram-desktop
     logseq
     mission-center
     # CLI pkgs
     wget
     bat
     ripgrep
     dust
     fd
     # Dev 
     android-tools # adb/fastboot
     python313
  ];

  home.sessionVariables = {
    EDITOR = "helix";
    TERM = "ghostty";
    SHELL = "fish";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
