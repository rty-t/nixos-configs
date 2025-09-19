{
  description = "rtytflake";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    nixowos.url = "github:yunfachi/nixowos";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    aagl.url = "github:ezKEa/aagl-gtk-on-nix";
    home-manager = {
       url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { nixpkgs, home-manager, chaotic, nixowos, nix-flatpak, aagl, ... }: 
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.cv01 = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./nixos/configuration.nix
        chaotic.nixosModules.default
        nixowos.nixosModules.default
        nix-flatpak.nixosModules.nix-flatpak
        {
        imports = [ aagl.nixosModules.default ];
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
        nixowos.homeModules.default
        chaotic.homeModules.default
      ];
    };
  };
}
