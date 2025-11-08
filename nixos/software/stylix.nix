{pkgs, ...}: {
  stylix = {
    enable = true;

    image = pkgs.fetchurl {
      url = "https://konachan.net/image/4dab3b0dcefdbf282c71b917f8d68d30/Konachan.com%20-%20389517%203d%20bandaid%20barefoot%20building%20choker%20fang%20green_eyes%20green_hair%20guitar%20haruri%20instrument%20leaves%20long_hair%20short_hair%20signed%20tattoo%20twintails%20vocaloid.jpg";
      hash = "sha256-tSVLPszYRwbOJrni0Cew58kZNCg9jxMvKbVUF7X4gM4=";
    };
    polarity = "dark";

    fonts = {
      sansSerif.name = "Adwaita Sans";
      monospace.name = "JetBrainsMono Nerd Font Mono";
    };

    autoEnable = true;
  };
}
