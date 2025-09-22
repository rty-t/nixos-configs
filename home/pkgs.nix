{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    mission-center
    switcheroo
    fractal
    #blockbench

    ## Notes/markdown
    #logseq
    folio #gtk

    ## Telegram clients
    telegram-desktop
    #ayugram-desktop
    #materialgram

    ## CLI pkgs
    pfetch-rs
    alejandra
    wget
    fd
    bat
    ripgrep
    dust

    ## Dev
    android-tools # adb/fastboot
  ];
}
