{pkgs, ...}: {
  services = {
    udev.packages = [pkgs.gnome-settings-daemon];
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;

    gnome = {
      core-shell.enable = true;
      core-apps.enable = false;
    };
  };

  programs.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };

  environment = {
    systemPackages = with pkgs;
      [
        nautilus
        gnome-extension-manager
      ]
      ++ (with pkgs.gnomeExtensions; [
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
      ]);
  };
}
