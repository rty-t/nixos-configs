{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    telegram-desktop

    ## CLI pkgs
    wget
    dust
    microfetch

    ## Dev
    python314
    go
    android-tools
  ];
}
