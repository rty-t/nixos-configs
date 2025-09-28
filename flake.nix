{
  description = "rtytflake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    aagl.url = "github:ezKEa/aagl-gtk-on-nix";
    nixvim.url = "github:nix-community/nixvim";
    stylix.url = "github:nix-community/stylix";
    home-manager.url = "github:nix-community/home-manager";
  };
  outputs = {
    nixpkgs,
    home-manager,
    chaotic,
    aagl,
    nixvim,
    stylix,
    ...
  }: let
    system = "x86_64-linux";
  in {
    nixosConfigurations.cv01 = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./nixos/configuration.nix
        chaotic.nixosModules.default
        stylix.nixosModules.stylix
        {
          imports = [aagl.nixosModules.default];
          nix.settings = aagl.nixConfig; # Set up Cachix
          programs = {
            anime-game-launcher.enable = false; # Adds launcher and /etc/hosts rules
            anime-games-launcher.enable = false;
            honkers-railway-launcher.enable = false;
            honkers-launcher.enable = false;
            wavey-launcher.enable = false;
            sleepy-launcher.enable = true;
          };
        }
      ];
    };
    homeConfigurations.pyndys = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [
        ./home/home.nix
        nixvim.homeModules.default
        stylix.homeModules.stylix
      ];
    };
  };
}
