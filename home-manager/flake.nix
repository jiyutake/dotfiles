{

  description = "Take's home-manager configuration flake";

  #inputs.spicetify-nix.url = github:the-argus/spicetify-nix;
  inputs.matugen.url = "github:/InioX/matugen";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {

      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";

    };

  };

  outputs = { nixpkgs, home-manager, ... }@inputs:

    let

      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

    in {

      homeConfigurations."tiffany" = home-manager.lib.homeManagerConfiguration {

        inherit pkgs;
        modules = [

	  ./home.nix
	  {_module.args = { inherit inputs; }; }
	  	
	];

      };

    };

}
