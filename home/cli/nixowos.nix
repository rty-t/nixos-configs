{
  nixowos = {
    enable = true;
    overlays = {
      enable = true;
      fastfetch = false; # Use fasfetch.nix instead
      nitch = true;
      nixos-icons = true;
    };
  };
}