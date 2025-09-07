{ pkgs, ... }:

{
  programs.vscode = {
   enable = true;
   package = pkgs.vscodium;
   profiles.pyndys = {
    extensions = with pkgs; [
      vscode-extensions.jnoortheen.nix-ide
      vscode-extensions.github.github-vscode-theme
     ];
    userSettings = {
      "files.autoSave" = "on";
      "workbench.colorTheme" = "GitHub Dark Colorblind (Beta)";
     };
    };
   };
}
