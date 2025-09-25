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
      conform-nvim = {
        enable = true;
        settings = {
          formatters_by_ft.nix = ["alejandra"];
          format_on_save.lsp_fallback = true;
        };
      };
      web-devicons.enable = true; # needed by some plugins
      telescope.enable = true;
      gitsigns.enable = true;
    };
  };
}
