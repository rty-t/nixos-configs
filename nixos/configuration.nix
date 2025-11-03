{
  imports = [
    ./pkgs.nix
    ./user.nix
    ./hardware/hardware-configuration.nix
    ./hardware/fstrim.nix
    ./hardware/pipewire.nix
    ./hardware/nvidia.nix
    ./hardware/udev-rules.nix
    ./hardware/printer.nix
    ./software/sudo-rs.nix
    ./software/boot.nix
    ./software/sched-ext.nix
    ./software/locale.nix
    ./software/fonts.nix
    ./software/gaming.nix
    ./network/networking.nix
    ./network/hosts.nix
    ./network/amn.nix
    ./network/searx.nix
    ./de-wm/gnome.nix
  ];

  nix = {
    optimise.automatic = true;
    settings = {
      experimental-features = ["nix-command" "flakes"];
      auto-optimise-store = true;
      warn-dirty = false;
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 14d";
    };
  };

  system.stateVersion = "25.05";
}
