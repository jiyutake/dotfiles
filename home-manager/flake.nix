{

  description = "Take's home-manager configuration flake";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {

      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";

    };

  };

  outputs = { nixpkgs, home-manager, ... }:

    let

      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

    in {

      homeConfigurations."tiffany" = home-manager.lib.homeManagerConfiguration {

        inherit pkgs;
        modules = [

	  ./home.nix
	
	];

      };

    };

}