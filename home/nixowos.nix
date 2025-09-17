{
  nixowos = {
    enable = true;
    overlays = {
      enable = true;
      fastfetch = false; # Use fasfetch.nix instead
      nitch = true;
      neofetch = true;
      nixos-icons = true;
    };
  };
}