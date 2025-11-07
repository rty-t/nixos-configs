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
      nil-ls.enable = true; # Nix
      pyright.enable = true; # Python
      gopls.enable = true; # Go
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

    plugins = {
      alpha = {
        enable = true;
        theme = "dashboard";
      };

      nvim-tree = {
        enable = true;
        settings.git.enable = true;
      };

      telescope = {
        enable = true;
        extensions = {
          zoxide.enable = true;
          media-files.enable = true;
          fzf-native.enable = true;
        };
      };

      web-devicons.enable = true;

      nvim-autopairs.enable = true;

      indent-blankline = {
        enable = true;
        settings = {
          indent.char = "│";
          scope.enabled = true;
        };
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

      gitsigns.enable = true;
    };

    dependencies = {
      bat.enable = true;
      fzf.enable = true;
      fd.enable = true;
      ripgrep.enable = true;
      imagemagick.enable = true;
      go.enable = true;
      fish.enable = true;
      git.enable = true;
    };
  };
}
