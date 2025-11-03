{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    switcheroo
    fractal
    #blockbench
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
