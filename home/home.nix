{pkgs, ...}: {
  imports = [
    ./pkgs.nix
    ./cli/fish.nix
    ./cli/git.nix
    ./cli/eza.nix
    ./cli/fzf.nix
    ./cli/zoxide.nix
    ./cli/nh.nix
    ./cli/starship.nix
    ./editors/nixvim.nix
    ./editors/vscode.nix
    ./gui/vesktop.nix
    ./gui/librewolf.nix
    ./gui/swappy.nix
    ./terms/ghostty.nix
  ];

  home = {
    username = "pyndys";
    homeDirectory = "/home/pyndys";
    stateVersion = "25.05";
  };

  nix.package = pkgs.nix;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
