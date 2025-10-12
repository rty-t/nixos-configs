{pkgs, ...}: {
  services = {
    udev.packages = [pkgs.gnome-settings-daemon];
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  documentation.nixos.enable = false;

  programs.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };

  environment = {
    systemPackages = with pkgs.gnomeExtensions; [
      caffeine
      appindicator
      dash-to-dock
      blur-my-shell
      notification-timeout
      gamemode-shell-extension
      rounded-window-corners-reborn
      just-perfection
      window-title-is-back
      logo-menu
      runcat
      user-themes
    ];

    gnome.excludePackages = with pkgs; [
      tali
      iagno
      hitori
      atomix
      yelp
      geary
      xterm
      totem
      loupe
      epiphany
      packagekit

      gnome-tour
      gnome-software
      gnome-contacts
      gnome-user-docs
      gnome-packagekit
      gnome-font-viewer
      gnome-maps
      gnome-weather
      gnome-system-monitor
      gnome-characters
      gnome-music
      gnome-secrets
    ];
  };
}
