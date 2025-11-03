{pkgs, ...}: {
  services = {
    displayManager.sddm = {
      enable = true;
      theme = "${pkgs.sddm-astronaut.override {variants = ["qt6"];}}/share/sddm/themes/sddm-astronaut-theme";
      wayland = {
        enable = true;
        compositor = "kwin";
      };
    };
    desktopManager.plasma6.enable = true;
  };
  environment = {
    plasma6.excludePackages = [];

    systemPackages = with pkgs; [];
  };
}
