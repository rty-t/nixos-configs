{pkgs, ...}: {
  home.packages = with pkgs; [
    ## Some apps
    mission-center
    switcheroo
    #blockbench

    ## Notes/markdown
    #logseq
    folio #gtk

    ## Telegram clients
    telegram-desktop
    #ayugram-desktop
    #materialgram

    ## CLI pkgs
    honeyfetch
    nitch
    leaf
    pfetch-rs
    microfetch
    deadnix
    alejandra
    wget
    fd
    bat
    ripgrep
    dust
    conceal

    ## Dev
    android-tools # adb/fastboot
  ];
}
