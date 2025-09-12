{pkgs, ...}:

{
  home.packages = with pkgs; [
     # Some apps
     logseq # notes/markdown
     mission-center # system monitor
     switcheroo # convert images

     # Telegram clients
     #telegram-desktop
     #ayugram-desktop
     materialgram

     # CLI pkgs
     wget
     bat # better cat
     ripgrep # better grep
     dust # better du

     # Dev 
     android-tools # adb/fastboot
     python313
  ];  
}