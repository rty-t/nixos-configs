{lib, pkgs, ... }:

{

    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # Activation  GNOME
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    services = {
      udev.packages = [ pkgs.gnome-settings-daemon ];        
        displayManager.gdm.enable = lib.mkDefault true;
        desktopManager.gnome = {
          enable = lib.mkDefault true;

          # Activation du Fractional Scaling
          extraGSettingsOverridePackages = [ pkgs.mutter ];
          extraGSettingsOverrides = ''
              [org.gnome.mutter]
            experimental-features=['scale-monitor-framebuffer', 'variable-refresh-rate']
          '';
        };
    };

    documentation.nixos.enable = false;

    systemd.services."getty@tty1".enable = false;
    systemd.services."autovt@tty1".enable = false;

    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # Packages système
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    programs.kdeconnect = {
      enable = false;
      package = pkgs.gnomeExtensions.gsconnect;
    };

    environment = {
      systemPackages = with pkgs; [

        # theme
        papirus-icon-theme

        # Extensions
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

      # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # exclude packages from GNOME
      # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
        gnome-terminal
        gnome-system-monitor
        gnome-characters
        gnome-music
        gnome-secrets
      ];
    };
}
