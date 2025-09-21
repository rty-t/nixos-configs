{
  lib,
  pkgs,
  ...
}: {
  services = {
    udev.packages = [pkgs.gnome-settings-daemon];
    displayManager.gdm.enable = lib.mkDefault true;
    desktopManager.gnome = {
      enable = lib.mkDefault true;

      extraGSettingsOverridePackages = [pkgs.mutter];
      extraGSettingsOverrides = ''
          [org.gnome.mutter]
        experimental-features=['scale-monitor-framebuffer', 'variable-refresh-rate']
      '';
    };
  };

  documentation.nixos.enable = false;

  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;

  programs.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };

  environment = {
    systemPackages = with pkgs; [
      papirus-icon-theme

      gnomeExtensions.caffeine
      gnomeExtensions.appindicator
      gnomeExtensions.dash-to-dock
      gnomeExtensions.blur-my-shell
      gnomeExtensions.notification-timeout
      gnomeExtensions.gamemode-shell-extension
      gnomeExtensions.rounded-window-corners-reborn
      gnomeExtensions.just-perfection
      gnomeExtensions.window-title-is-back
      gnomeExtensions.logo-menu
      gnomeExtensions.runcat
      gnomeExtensions.user-themes
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

  services.flatpak.packages = [
    "org.altlinux.Tuner"
    "io.github.swordpuffin.rewaita"
  ];
}
