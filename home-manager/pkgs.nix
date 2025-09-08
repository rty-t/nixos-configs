{pkgs, ...}:

{
  home.packages = with pkgs; [
     # Some apps
     materialgram
     logseq
     mission-center
     switcheroo
     # CLI pkgs
     wget
     bat
     ripgrep
     dust
     fd
     # Dev 
     android-tools # adb/fastboot
     python313
  ];  
}