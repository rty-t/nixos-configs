{pkgs, ...}: {
  stylix = {
    enable = true;

    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/3k/wallhaven-3kjyg6.png";
      hash = "sha256-+VEHOm5N1VSBsHgvpVUHIGEUHr9h+6dk5l6WTsMse0E=";
    };
    polarity = "dark";

    fonts = {
      sansSerif.name = "Adwaita Sans";
      monospace.name = "JetBrainsMono Nerd Font";
    };

    autoEnable = true;
  };
}
