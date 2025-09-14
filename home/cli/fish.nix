{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      ff = "fastfetch";
      rcat = "cat";
      cat = "bat --theme base16";
      rdu = "du";
      du = "dust";
    };
  };

    # Plugins for fish
    home.packages = with pkgs; [
     fishPlugins.tide
     fishPlugins.autopair
     fishPlugins.sponge
     ];
}