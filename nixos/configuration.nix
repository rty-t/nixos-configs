{
  imports = [
    ./pkgs.nix
    ./user.nix
    ./hardware
    ./software
    ./network
    ./de-wm
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
