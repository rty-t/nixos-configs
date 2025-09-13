{pkgs, ...}:

{
  home.packages = with pkgs; [

     ## Some apps
     mission-center # system monitor
     switcheroo # convert images

     ## Notes/markdown
     #logseq
     folio
     #apostrophe
     #obsidian #unfree😭😭😭

     ## Telegram clients
     telegram-desktop
     #ayugram-desktop
     #materialgram
     #paper-plane #gtk
     #_64gram

     ## CLI pkgs
     wget
     bat # better cat
     ripgrep # better grep
     dust # better du

     ## Dev 
     android-tools # adb/fastboot
     python313
  ];  
}