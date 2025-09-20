{pkgs, ...}:

{
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

     ## Matrix/Element clients
     #element-desktop
     fractal
     #nheko

     ## CLI pkgs
     wget
     fd      
     bat     
     ripgrep 
     dust    

     ## Dev 
     android-tools # adb/fastboot
  ];  
}