{ config, pkgs, ... }:

{
  imports = [
  ./nixowos.nix
  ./pkgs.nix
  ./cli/fish.nix
  ./cli/fastfetch.nix
  ./cli/git.nix
  ./cli/eza.nix
  ./cli/skim.nix
  ./cli/zoxide.nix
  ./cli/bottom.nix
  ./cli/btop.nix
  ./cli/nh.nix
  ./editors/vim.nix
  ./editors/helix.nix
  ./editors/vscode.nix
  ./gui/vesktop.nix
  ./gui/librewolf.nix
  ./gui/lutris.nix
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

  nix.package = pkgs.nix;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
