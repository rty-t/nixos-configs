{
  description = "rtytflake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    nixvim.url = "github:nix-community/nixvim";
    home-manager.url = "github:nix-community/home-manager";
  };
  outputs = {
    nixpkgs,
    home-manager,
    chaotic,
    nix-flatpak,
    nixvim,
    ...
  }: let
    system = "x86_64-linux";
  in {
    nixosConfigurations.cv01 = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./nixos/configuration.nix
        chaotic.nixosModules.default
        nix-flatpak.nixosModules.nix-flatpak
      ];
    };
    homeConfigurations.pyndys = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [
        ./home/home.nix
        nixvim.homeModules.default
      ];
    };
  };
}
