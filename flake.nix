{
  description = "rtytflake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    zen-browser.url = "github:0xc000022070/zen-browser-flake/beta";
    stylix.url = "github:nix-community/stylix";
    nvf.url = "github:notashelf/nvf";
    home-manager.url = "github:nix-community/home-manager";
  };
  outputs = {
    nixpkgs,
    home-manager,
    chaotic,
    stylix,
    zen-browser,
    nvf,
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
      ];
    };
    homeConfigurations.pyndys = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [
        ./home/home.nix
        zen-browser.homeModules.beta
        stylix.homeModules.stylix
        nvf.homeManagerModules.default
      ];
    };
  };
}
