{pkgs, ...}: {
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus";
    };
    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Adwaita";
      size = 32;
    };
  };
}
