{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    mission-center
    switcheroo
    fractal
    #blockbench
    logseq
    materialgram

    ## CLI pkgs
    honeyfetch
    pfetch-rs
    deadnix
    alejandra
    nix-btm
    wget
    fd
    bat
    ripgrep
    dust
    conceal

    ## Dev
    android-tools # adb/fastboot
    python314
    go
  ];
}
