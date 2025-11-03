{pkgs, ...}: {
  services.searx = {
    enable = true;
    package = pkgs.searxng;
    settings = {
      general = {
        enable_metrics = false;
        open_metrics = false;
      };
      server = {
        port = 8080;
        secret_key = "$SEARX_SECRET_KEY";
      };
      ui = {
        default_locale = "ru";
      };
    };
  };
}
