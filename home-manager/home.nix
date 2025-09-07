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
  ./pkgs.nix
  ];

  home = {
    username = "pyndys";
    homeDirectory = "/home/pyndys";
    stateVersion = "25.05"; 
    sessionVariables = {
      EDITOR = "hx";
      TERM = "ghostty";
      SHELL = "fish";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
