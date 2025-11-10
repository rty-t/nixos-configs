{pkgs, ...}: {
  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    plugins = {
      starship = pkgs.yaziPlugins.starship;
      git = pkgs.yaziPlugins.git;
    };
  };
}
