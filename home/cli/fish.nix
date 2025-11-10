{pkgs, ...}: {
  programs.fish = {
    enable = true;
    shellAliases = {
      cat = "bat";
      du = "dust";
      ff = "fastfetch";
      pf = "pfetch";
      n = "nitch";
      tree = "eza --tree";
    };
    interactiveShellInit = ''
      set -U fish_greeting ""
    '';
  };

  home.packages = with pkgs.fishPlugins; [
    autopair
    sponge
    git-abbr
  ];
}
