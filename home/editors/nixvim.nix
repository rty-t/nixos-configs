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
    plugins = {
      nvim-autopairs.enable = true;
      nvim-tree.enable = true;
      telescope.enable = true;
      gitsigns.enable = true;
    };
  };
}
