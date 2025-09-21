{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "~/nixos-configs/nya.png";
        type = "kitty";
        height = 12;
        padding = {
          top = 1;
        };
      };
      display = {
        separator = " ";
      };
      modules = [
        "break"
        "break"
        "break"
        "title"
        {
          "type" = "custom";
          "format" = "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
        }
        {
          "type" = "os";
          "key" = "~ ";
          "keyColor" = "34";
        }
        {
          "type" = "kernel";
          "key" = "~ ";
          "keyColor" = "34";
        }
        {
          "type" = "packages";
          "key" = "~ ";
          "keyColor" = "34";
        }
        {
          "type" = "shell";
          "key" = "~ ";
          "keyColor" = "34";
        }
        {
          "type" = "terminal";
          "key" = "~ ";
          "keyColor" = "34";
        }
        {
          "type" = "memory";
          "key" = "~ ";
          "keyColor" = "34";
        }
        {
          "type" = "disk";
          "key" = "~ ";
          "keyColor" = "34";
        }
      ];
    };
  };
}
