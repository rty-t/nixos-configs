{
  programs.vesktop = {
    enable = true;
    settings = {
      appBadge = false;
      arRPC = true;
      checkUpdates = false;
      customTitleBar = false;
      disableMinSize = true;
      minimizeToTray = true;
      tray = true;
      splashBackground = "#0d1117";
      splashColor = "#58a6ff";
      splashTheming = true;
      staticTitle = false;
      hardwareAcceleration = true;
      discordBranch = "stable";
    };
    vencord = {
      useSystem = false;
      themes = {
        emoji = "@import url(https://mwittrien.github.io/BetterDiscordAddons/Themes/EmojiReplace/base/Google.css);";
        material = "
        @import url(https://capnkitten.github.io/BetterDiscord/Themes/Material-Discord/css/source.css);
        @import url(https://capnkitten.github.io/BetterDiscord/Themes/Material-Discord/css/addons/material-you/source.css)
        ";
      };
      settings = {
        autoUpdate = true;
        autoUpdateNotification = false;
        useQuickCss = true;
        frameless = true;
        transparent = false;
        disableMinSize = false;
        enabledThemes = [
          "emoji.css"
          "material.css"
        ];
        plugins = {
          AnonymiseFileNames = {
            enabled = true;
            anonymiseByDefault = true;
            method = 0;
            randomisedLength = 7;
          };
          ClearURLs.enabled = true;
          oneko.enabled = true;
        };
      };
    };
  };
}
