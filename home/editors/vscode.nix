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
        "workbench.colorTheme" = "GitHub Dark Colorblind (Beta)";
        "workbench.iconTheme" = "material-icon-theme";
        "editor.fontFamily" = "'Cascadia Code', 'Droid Sans Mono', 'monospace', monospace, 'Symbols Nerd Font Mono'";

        "git.openRepositoryInParentFolders" = "always";
        "git.confirmSync" = false;
        "git.enableSmartCommit" = true;

        "extensions.autoCheckUpdates" = false;
        "extensions.autoUpdate" = "None";

        "files.autoSave" = "on";

        "terminal.explorerKind" = "external";
        "terminal.external.linuxExec" = "ghostty";

        "chat.agent.enabled" = false;
        "chat.disableAIFeatures" = true;
      };
    };
  };
}
