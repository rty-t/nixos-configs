{ lib, config, pkgs, ...}:

{
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # Activation Plasma
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    services = {
      displayManager = {
        defaultSession = "plasma";
        sddm = {
          enable = true;
          theme = "breeze";
        };
      };
      desktopManager.plasma6.enable = true;
    };
    hardware.bluetooth.enable = false;
    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.kdePackages.xdg-desktop-portal-kde ];
      xdgOpenUsePortal = true;
    };
    systemd.services."getty@tty1".enable = false;
    systemd.services."autovt@tty1".enable = false;
    
    documentation.nixos.enable = false;
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    # Packages
    # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    programs.kdeconnect.enable = false;
    environment = {
      systemPackages = with pkgs; [
      python313Packages.kde-material-you-colors
      tela-circle-icon-theme
    ];
    plasma6.excludePackages = with pkgs; [ 
        kdePackages.discover
        kdePackages.kate
        kdePackages.kwrited
        kdePackages.elisa
        kdePackages.kmenuedit
       ];
    };
}
