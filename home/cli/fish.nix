{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      ff = "fastfetch";
      c = "bat --theme base16";
      d = "dust";
      v = "vim";
      hm = "home-manager";
      hms = "home-manager switch";
      hmsf = "home-manager switch --flake ~/nixos-configs/";
      nr = "sudo nixos-rebuild";
      nrs = "sudo nixos-rebuild switch";
      nrsu = "sudo nixos-rebuild switch --upgrade";
      nrsi = "sudo nixos-rebuild switch --impure";
      nrsf = "sudo nixos-rebuild switch --flake ~/nixos-configs/";
      nrsfi = "sudo nixos-rebuild switch --flake ~/nixos-configs/ --impure";
      nrsfu = "sudo nixos-rebuild switch --flake ~/nixos-configs/ --upgrade";
      nrsfiu = "sudo nixos-rebuild switch --flake ~/nixos-configs/ --impure --upgrade";
      nfu = "cd ~/nixos-configs/ && sudo nix flake update";
      ncu = "nix-channel --update";
      "ncu!" = "sudo nix-channel --update";
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
