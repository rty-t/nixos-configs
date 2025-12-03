{pkgs, ...}: {
  services = {
    displayManager.cosmic-greeter.enable = true;
    desktopManager.cosmic.enable = true;
  };

  environment = {
    cosmic.excludePackages = with pkgs; [
      cosmic-edit
      cosmic-term
    ];
  };
}
