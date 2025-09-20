{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      ff = "fastfetch";
      cat = "bat --theme base16";
      du = "dust";
    };
  };

    # Plugins for fish
    home.packages = with pkgs.fishPlugins; [
     autopair
     sponge
     git-abbr
     fish-you-should-use
     ];
}
