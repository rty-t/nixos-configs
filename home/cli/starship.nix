{lib, ...}: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      add_newline = false;
      character = {
        success_symbol = "[](bold blue)";
        error_symbol = "[](bold red)";
      };

      format = lib.concatStrings [
        "╭──"
        "$os"
        "$directory"
        "$git_branch$git_status"
        "$cmd_duration"
        "\n╰─$character"
      ];

      os = {
        format = "[$symbol ](white)";
        disabled = false;
        symbols = {
          NixOS = " ";
          Arch = " ";
          Fedora = " ";
          Nobara = " ";
          Redhat = " ";
          RedHatEnterprise = " ";
          RockyLinux = " ";
          openSUSE = " ";
          SUSE = " ";
          AlmaLinux = " ";
          Ubuntu = " ";
          Pop = " ";
          Mint = "󰣭 ";
          Debian = " ";
          Kali = " ";
          EndeavourOS = " ";
          Garuda = " ";
          Artix = " ";
          Manjaro = " ";
          Alpine = " ";
          Solus = " ";
          Void = " ";
          Gentoo = " ";
          Linux = " ";
          Macos = " ";
          Android = " ";
          Windows = " ";
          Unknown = " ";
        };
      };

      directory = {
        format = "[$path ](bold blue)";
        truncation_length = 3;
        truncation_symbol = "…/";
        read_only = " 󰌾 ";
        read_only_style = "red";
        substitutions = {
          "~" = " ~";
          "Documents" = "󰈙 ";
          "Downloads" = " ";
          "Music" = " ";
          "Pictures" = " ";
          "Games" = " ";
          "Videos" = " ";
          "nixos-configs" = " ";
        };
      };

      git_branch = {
        format = "[ $symbol$branch](purple) ";
        symbol = "  ";
      };

      cmd_duration = {
        format = "[  $duration](yellow) ";
      };
    };
  };
}
