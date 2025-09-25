{
  programs.nixvim = {
    enable = true;
    colorschemes.palette = {
      enable = true;
      settings = {
        transparent_background = true;
        caching = false;
      };
    };
  };
}
