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
      useSystem = true;
      settings = {
        autoUpdate = false;
        autoUpdateNotification = false;
        useQuickCss = true;
        frameless = true;
        transparent = false;
        disableMinSize = false;
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
