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
    settings.experimental-features = ["nix-command" "flakes"];

    optimise = {
      automatic = true;
      dates = "weekly";
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };

  system.stateVersion = "25.05";
}
