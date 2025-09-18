{
  programs.ghostty = {
   enable = true;
   enableFishIntegration = true;
   enableBashIntegration = false;
   enableZshIntegration = false;
   installBatSyntax = true;
   settings = {
    theme = "GitHub Dark Colorblind";
    font-size = 12;
    cursor-opacity = 1;
    cursor-style = "block";
    mouse-hide-while-typing = true;
    background-opacity = 0.95;
    background-blur = true;
    window-theme = "ghostty";
   };
  };
}