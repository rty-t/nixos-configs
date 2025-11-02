{pkgs, ...}: {
  programs.fastfetch = {
    enable = true;
    package = pkgs.fastfetchMinimal;
    settings = {
      modules = [
        "title"
        "os"
        "host"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "display"
        "de"
        "wm"
        "theme"
        "icons"
        "terminal"
        "terminalfont"
        "cpu"
        "gpu"
        "memory"
        "disk"
        "break"
        "colors"
      ];
    };
  };
}
