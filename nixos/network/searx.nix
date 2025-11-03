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
        secret_key = "cb1db7f9f96af1fe9b334361e194f8b0b41a487f798ae643b8e1006bbc12ae28";
      };
      ui = {
        default_locale = "ru";
      };
    };
  };
}
