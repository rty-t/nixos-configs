{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    logseq
    materialgram

    ## CLI pkgs
    deadnix
    alejandra
    ruff
    wget
    dust
    conceal
    nur.repos.zerozawa.mikusays

    ## Dev
    android-tools # adb/fastboot
    python314
    go
  ];
}
