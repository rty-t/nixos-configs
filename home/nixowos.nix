{
  nixowos = {
    enable = true;
    overlays = {
      enable = true;
      fastfetch = false; # Use fastfetch.nix instead
      nitch = true;
      neofetch = true;
      nixos-icons = true;
    };
  };
}
