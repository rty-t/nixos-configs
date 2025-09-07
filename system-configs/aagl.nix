{ config, pkgs, ... }:

let
  aagl = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/main.tar.gz");
  # Or, if you follow Nixpkgs release 25.05:
  # aagl = import (builtins.fetchTarball "https://github.com/ezKEa/aagl-gtk-on-nix/archive/release-25.05.tar.gz");
in
{
  imports = [
    aagl.module
  ];

  nix.settings = aagl.nixConfig; # Set up Cachix
  programs.anime-game-launcher.enable = true;
  programs.anime-games-launcher.enable = false;
  programs.honkers-railway-launcher.enable = false;
  programs.honkers-launcher.enable = false;
  programs.wavey-launcher.enable = false;
  programs.sleepy-launcher.enable = false;
}