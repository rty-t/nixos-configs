{
  programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    # Whether to enable XWayland
    xwayland.enable = true;
  };

  services.displayManager.ly.enable = true;

  programs.xdg-desktop-portal-hyprland.enable = true;
}
