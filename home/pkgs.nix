{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    mission-center
    switcheroo
    fractal
    #blockbench
    logseq

    ## Telegram clients
    telegram-desktop
    #ayugram-desktop
    #materialgram

    ## CLI pkgs
    honeyfetch
    nitch
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
    python313
    go
  ];
}
