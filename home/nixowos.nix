{
  nixowos = {
    enable = true;
    overlays = {
      enable = true;
      fastfetch = true;
      nitch = true;
      neofetch = true;
      hyfetch = true;
      nixos-icons = true;
    };
  };
}
