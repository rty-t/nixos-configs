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
      alpha = {
        enable = true;
        theme = "startify";
      };
      nvim-autopairs.enable = true;
      nvim-tree.enable = true;
      telescope.enable = true;
      gitsigns.enable = true;
    };
  };
}
