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

    lsp.servers = {
      nil-ls.enable = true;
      pyright.enable = true;
      gopls.enable = true;
    };

    keymaps = [
      {
        mode = "n";
        key = "<C-b>";
        action = ":NvimTreeToggle<CR>";
      }
      {
        mode = "n";
        key = "<C-x>";
        action = ":Telescope<CR>";
      }
    ];

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
          formatters_by_ft = {
            nix = ["alejandra"];
            go = ["gofmt"];
            python = ["ruff_format"];
          };
          format_on_save.lsp_fallback = true;
        };
      };
      indent-blankline = {
        enable = true;
        settings = {
          indent.char = "│";
          scope.enabled = true;
        };
      };
      web-devicons.enable = true; # needed by some plugins
      telescope = {
        enable = true;
        extensions = {
          zoxide.enable = true;
        };
      };
      gitsigns.enable = true;
    };
  };
}
