{pkgs, ...}: {
  programs.fish = {
    enable = true;
    shellAliases = {
      ff = "fastfetch";
      pf = "pfetch";
      cat = "bat --theme base16";
      du = "dust";
    };
    interactiveShellInit = ''
      set -U fish_greeting ""
    '';
  };

  # Plugins for fish
  home.packages = with pkgs.fishPlugins; [
    autopair
    sponge
    git-abbr
    fish-you-should-use
  ];
}
