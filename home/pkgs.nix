{pkgs, ...}:

{
  home.packages = with pkgs; [

     ## Some apps
     mission-center # system monitor
     switcheroo     # convert images

     ## Notes/markdown
     #logseq
     #folio
     #apostrophe
     #obsidian #unfree😭😭😭
     #trilium-desktop
     #joplin-desktop

     ## Telegram clients
     telegram-desktop
     #ayugram-desktop
     #materialgram
     #paper-plane #gtk
     #_64gram

     ## Discord clients
     #discord #unfree😭😭😭
     #goofcord
     #dissent
     #equibop
     #vesktop

     ## Matrix/Element clients
     #element-desktop
     fractal
     #nheko
     #fluffychat
     #kdePackages.neochat

     ## CLI pkgs
     wget
     bat     # better cat
     ripgrep # better grep
     dust    # better du

     ## Dev 
     android-tools # adb/fastboot
     python313
  ];  
}