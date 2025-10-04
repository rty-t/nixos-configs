{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.pyndys = {
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
        github.github-vscode-theme
        kamadorueda.alejandra
        pkief.material-icon-theme
        golang.go
        ms-python.python
      ];
      userSettings = {
        "files.autoSave" = "on";
        "workbench.colorTheme" = "GitHub Dark Colorblind (Beta)";
        "workbench.iconTheme" = "material-icon-theme";
        "editor.fontFamily" = "'Cascadia Code', 'Droid Sans Mono', 'monospace', monospace, 'Symbols Nerd Font Mono'";
        "git.openRepositoryInParentFolders" = "always";
        "git.confirmSync" = false;
        "git.enableSmartCommit" = true;
      };
    };
  };
}
