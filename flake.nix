{
  description = "My NixOS configuration";

  inputs = {

    # Nix ecosystem
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hardware.url = "github:nixos/nixos-hardware";
   


 };

 outputs = {
    self,
    nixpkgs,
    home-manager,
    systems,
    ...
  } @ inputs: let
    inherit (self) outputs;
    lib = nixpkgs.lib // home-manager.lib;
    forEachSystem = f: lib.genAttrs (import systems) (system: f pkgsFor.${system});
    pkgsFor = lib.genAttrs (import systems) (
      system:
        import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        }
    );
  in {
    inherit lib;
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;


     nixosConfigurations = {

      # Laptop Lenovo
      dazai = lib.nixosSystem {
        modules = [./hosts/dazai];
        specialArgs = {
          inherit inputs outputs;
        };
      };

      # Main Computer
      nazuna = lib.nixosSystem {
        modules = [./hosts/nazuna];
        specialArgs = {
          inherit inputs outputs;
        };
      };
   };
  homeConfigurations = {
      # Standalone HM only
      
      # Laptop Lenovo
      "kykero@dazai" = lib.homeManagerConfiguration {
        modules = [ ./home/kykero/dazai.nix ./home/kykero/nixpkgs.nix ];
        pkgs = pkgsFor.x86_64-linux;
        extraSpecialArgs = {
          inherit inputs outputs;
        };
      };

      # Main Computer
      "kykero@nazuna" = lib.homeManagerConfiguration {
        modules = [./home/kykero/nazuna.nix ./home/kykero/nixpkgs.nix];
        pkgs = pkgsFor.x86_64-linux;
        extraSpecialArgs = {
          inherit inputs outputs;
        };
      };
    };
  };
}	

