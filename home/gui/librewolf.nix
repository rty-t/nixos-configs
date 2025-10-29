{pkgs, ...}: {
  programs.librewolf = {
    enable = true;
    settings = {
      "webgl.disabled" = true;
      "privacy.resistFingerprinting" = true;
      "privacy.clearOnShutdown.history" = false;
      "privacy.clearOnShutdown.cookies" = false;
      "network.cookie.lifetimePolicy" = 0;
    };
    profiles.pyndys = {
      name = "pyndys";
      isDefault = true;
      path = "pyndys";
      settings = {
        "browser.newtabpage.pinned" = [
          {
            title = "youtube";
            url = "https://youtube.com";
          }
          {
            title = "modrinth";
            url = "https://modrinth.com";
          }
          {
            title = "protondb";
            url = "https://www.protondb.com";
          }
          {
            title = "steamdb";
            url = "https://steamdb.info";
          }
          {
            title = "reddit";
            url = "https://www.reddit.com/";
          }
        ];
        "browser.newtabpage.activity-stream.feeds.topsites" = true;
        "browser.newtabpage.activity-stream.showSponsoredCheckboxes" = false;
      };
      search = {
        engines = {
          searchix = {
            name = "Searchix";
            urls = [{template = "https://searchix.ovh/?query={searchTerms}";}];
          };
          get = {
            name = "4get";
            urls = [{template = "https://4get.ch/web?s={searchTerms}";}];
          };
        };
      };
      extensions = {
        packages = with pkgs.nur.repos.rycee.firefox-addons; [
          ublock-origin
          privacy-badger
          decentraleyes
          istilldontcareaboutcookies
          darkreader
          sponsorblock
          return-youtube-dislikes
          material-icons-for-github
        ];
      };
    };
  };
}
