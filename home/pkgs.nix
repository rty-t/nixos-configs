{
  pkgs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    ## Some apps
    telegram-desktop

    ## CLI pkgs
    wget
    dust
    onefetch
    microfetch
    nur.repos.zerozawa.mikusays

    ## Dev
    python314
    go
    android-tools
  ];

  ## Unfree
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "obsidian"
    ];
}
