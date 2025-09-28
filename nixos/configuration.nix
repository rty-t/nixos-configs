{
  imports = [
    ./pkgs.nix
    ./user.nix
    ./hardware/hardware-configuration.nix
    ./hardware/fstrim.nix
    ./hardware/pipewire.nix
    ./hardware/nvidia.nix
    ./software/sudo-rs.nix
    ./software/boot.nix
    ./software/locale.nix
    ./software/fonts.nix
    ./software/gaming.nix
    ./network/networking.nix
    ./network/hosts.nix
    ./network/zapre.nix
    ./de-wm/hyprland.nix
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

  stylix = {
    enable = true;
    autoEnable = true;
    image = ~/Downloads/wallhaven-lyqm5r.png;
  };

  system.stateVersion = "25.05";
}
