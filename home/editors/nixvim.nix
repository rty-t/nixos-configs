{
  programs.nixvim = {
    enable = true;
    opts = {
      swapfile = false;
      backup = false;
      writebackup = false;
      undofile = true;
      number = true;
      relativenumber = false;
    };

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
        theme = "dashboard";
      };
      nvim-autopairs.enable = true;
      nvim-tree = {
        enable = true;
        settings.git.enable = true;
      };
      telescope.enable = true;
      gitsigns.enable = true;
    };
  };
}
