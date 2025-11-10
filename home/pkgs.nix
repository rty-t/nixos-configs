{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    telegram-desktop

    ## CLI pkgs
    wget
    dust
    nitch
    pfetch-rs
    nerdfetch
    microfetch
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
