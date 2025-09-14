{ config, pkgs, ... }:

{
  imports = [
  ./pkgs.nix
  ./cli/fish.nix
  ./cli/fastfetch.nix
  ./cli/git.nix
  ./cli/eza.nix
  ./cli/skim.nix
  ./cli/zoxide.nix
  ./editors/helix.nix
  ./editors/vscode.nix
  ./gui/mangohud.nix
  ./gui/vesktop.nix
  ./terms/ghostty.nix
  #./terms/kitty.nix
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
