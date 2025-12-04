{pkgs, ...}: {
  stylix = {
    enable = true;
    enableReleaseChecks = false;

    image = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/rq/wallhaven-rqqegj.jpg";
      hash = "sha256-UBFOZe+2+YKX6GFzcJtU65ArCgPUDQYDVgolrjofV2A=";
    };
    polarity = "dark";

    fonts = {
      sansSerif.name = "Adwaita Sans";
      monospace.name = "JetBrainsMono Nerd Font";
    };

    autoEnable = true;
  };
}
