{
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
    enableGitIntegration = true;
    shellIntegration.enableFishIntegration = true;
    settings = {
      background_opacity = 0.9;
      background_blur = 1;
    };
  };
}
