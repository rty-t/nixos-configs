{
  programs.nvf = {
    enable = true;

    settings.vim = {
      lineNumberMode = "number";
      autopairs.nvim-autopairs.enable = true;
      telescope.enable = true;
      git.gitsigns.enable = true;

      lsp = {
        enable = true;
        formatOnSave = true;
      };

      languages = {
        nix = {
          enable = true;
          extraDiagnostics.enable = true;
          format = {
            enable = true;
            type = [ "alejandra" ];
          };
        };

        python = {
          enable = true;
          format = {
            enable = true;
            type = [ "ruff" ];
          };
        };

        go.enable = true;
      };
    };
  };
}
