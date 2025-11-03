{pkgs, ...}: {
  imports = [
    ./pkgs.nix
    ./cli/fish.nix
    ./cli/git.nix
    ./cli/eza.nix
    ./cli/fzf.nix
    ./cli/z.nix
    ./cli/nh.nix
    ./cli/starship.nix
    ./cli/rg.nix
    ./cli/fd.nix
    ./cli/bat.nix
    ./cli/fetch.nix
    ./editors/nvim.nix
    ./editors/vscode.nix
    ./gui/vesktop.nix
    ./gui/swappy.nix
    ./browsers/librewolf.nix
    ./browsers/helium.nix
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
