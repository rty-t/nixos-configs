{pkgs, ...}: {
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
      "nix" = {
        name = "nix";
        enable = true;
        package = pkgs.nix;
      };
      "python" = {
        name = "python";
        enable = true;
        package = pkgs.python314;
      };
      "go" = {
        name = "go";
        enable = true;
        package = pkgs.go;
      };
    };

    keymaps = [
      {
        mode = "n";
        key = "<C-b>";
        action = ":NvimTreeOpen<CR>";
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
            python = ["ruff"];
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
