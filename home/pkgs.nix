{pkgs, ...}:

{
  home.packages = with pkgs; [

     ## Some apps
     mission-center # system monitor
     switcheroo     # convert images
     #blockbench    # low-poly 3D modeling

     ## Notes/markdown
     #logseq
     #folio #gtk
     #apostrophe
     #trilium-desktop
     #joplin-desktop

     ## Telegram clients
     telegram-desktop
     #ayugram-desktop
     #materialgram
     #paper-plane #gtk
     #_64gram

     ## Discord clients
     #goofcord
     #dissent #gtk
     #equibop
     #vesktop

     ## Matrix/Element clients
     #element-desktop
     fractal
     #nheko
     #fluffychat
     #kdePackages.neochat

     ## CLI pkgs
     nitch
     wget
     bat     # better cat
     ripgrep # better grep
     dust    # better du

     ## Dev 
     android-tools # adb/fastboot
     python313
  ];  
}