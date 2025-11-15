{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    telegram-desktop

    ## CLI pkgs
    wget
    dust
    microfetch
    nur.repos.zerozawa.mikusays

    ## Dev
    python314
    go
    android-tools
  ];
}
