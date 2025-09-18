{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      ff = "fastfetch";
      cat = "bat --theme base16";
      du = "dust";
      home-switch = "home-manager switch --flake ~/nixos-configs/";
      nixos-switch = "sudo nixos-rebuild switch --flake ~/nixos-configs/";
      nixos-update = "sudo nixos-rebuild switch --flake ~/nixos-configs/ --upgrade";
      flake-update = "cd ~/nixos-configs/ && sudo nix flake update";
      nix-clear = "sudo nix-collect-garbage -d && sudo nix-store --optimise";
    };
  };

    # Plugins for fish
    home.packages = with pkgs.fishPlugins; [
     tide
     autopair
     sponge
     git-abbr
     fish-you-should-use
     ];
}
