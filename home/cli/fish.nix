{pkgs, ...}: {
  programs.fish = {
    enable = true;
    shellAliases = {
      cat = "bat";
      du = "dust";
      rm = "cnc";
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
