{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    transmission_4-qt6
    telegram-desktop

    ## CLI pkgs
    wget
    dust
    nix-melt
    onefetch
    microfetch
    nur.repos.zerozawa.mikusays

    ## Dev
    python314
    go
    android-tools
  ];
}
