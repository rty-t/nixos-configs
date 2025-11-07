{pkgs, ...}: {
  imports = [
    ./pkgs.nix
    ./stylix.nix
    ./cli
    ./editors
    ./gui
    ./browsers
    ./terms
  ];

  home = {
    username = "pyndys";
    homeDirectory = "/home/pyndys";
    stateVersion = "25.05";
  };

  nix.package = pkgs.nix;

  programs.home-manager.enable = true;
}
