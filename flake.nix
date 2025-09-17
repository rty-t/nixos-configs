{
  description = "rtytflake";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { nixpkgs, ... }: {
    nixosConfigurations.cv01 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./nixos/configuration.nix
      ];
    };
  };
}