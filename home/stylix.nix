{
  imports = [
    ../nixos/software/stylix.nix
  ];

  stylix = {
    targets = {
      vencord.enable = false;
    };
  };
}
