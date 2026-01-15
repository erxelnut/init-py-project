{
  description = "A very basic python env flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }: let
  	pkgs = nixpkgs.legacyPackages."x86_64-linux";
	python = pkgs.python3;
  in {
  	devShells.x86_64-linux.default = pkgs.mkShell {
    		packages = [
    			(python.withPackages(p: with p; [
				numpy
				requests
				pandas
			]))
    		];
	};

  };
}
