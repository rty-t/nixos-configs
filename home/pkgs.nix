{pkgs, ...}:

{
  home.packages = with pkgs; [

     ## Some apps
     mission-center # system monitor
     switcheroo     # convert images
     #blockbench    # low-poly 3D modeling

     ## Notes/markdown
     #logseq
     folio #gtk

     ## Telegram clients
     telegram-desktop
     #ayugram-desktop
     #materialgram

     ## Matrix/Element clients
     #element-desktop
     fractal
     #nheko

     ## CLI pkgs
     wget
     broot
     fd      # better find
     bat     # better cat
     ripgrep # better grep
     dust    # better du

     ## Dev 
     android-tools # adb/fastboot
  ];  
}