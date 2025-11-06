{pkgs, ...}: {
  programs.fish = {
    enable = true;
    shellAliases = {
      cat = "bat";
      du = "dust";
      rm = "cnc";
      ff = "fastfetch";
      tree = "eza --tree";
      ":q" = "exit";
    };
    interactiveShellInit = ''
      set -U fish_greeting ""
    '';
  };

  home.packages = with pkgs.fishPlugins; [
    autopair
    sponge
  ];
}
