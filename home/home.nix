{pkgs, ...}: {
  imports = [
    ./nixowos.nix
    ./pkgs.nix
    ./cli/fish.nix
    ./cli/git.nix
    ./cli/eza.nix
    ./cli/skim.nix
    ./cli/zoxide.nix
    ./cli/btop.nix
    ./cli/nh.nix
    ./cli/starship.nix
    ./editors/vim.nix
    ./editors/helix.nix
    ./editors/vscode.nix
    ./gui/vesktop.nix
    ./gui/librewolf.nix
    ./gui/lutris.nix
    ./gui/swappy.nix
    ./terms/ghostty.nix
  ];

  home = {
    username = "pyndys";
    homeDirectory = "/home/pyndys";
    stateVersion = "25.05";
    sessionVariables = {
      SHELL = "fish";
      CONCEAL_FINDER = "skim";
    };
  };

  nix.package = pkgs.nix;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
