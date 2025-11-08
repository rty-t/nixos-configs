{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    telegram-desktop

    ## CLI pkgs
    wget
    dust
    conceal
    nur.repos.zerozawa.mikusays
    android-tools

    ## Nix
    deadnix
    statix
    alejandra

    ## Python
    python314
    ruff

    ## Go
    go
  ];
}
