{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.pyndys = {
      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
        github.github-vscode-theme
        kamadorueda.alejandra
      ];
      userSettings = {
        "files.autoSave" = "on";
        "workbench.colorTheme" = "GitHub Dark Colorblind (Beta)";
        "git.openRepositoryInParentFolders" = "always";
        "git.confirmSync" = false;
        "git.enableSmartCommit" = true;
      };
    };
  };
}
