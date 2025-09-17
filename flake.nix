{
  description = "rtytflake";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
  };
  outputs = { nixpkgs, chaotic, ... }: {
    nixosConfigurations.cv01 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./nixos/configuration.nix
        chaotic.nixosModules.default
      ];
    };
  };
}