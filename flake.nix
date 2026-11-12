{
  description = "NixOS GNOME configuration for this machine";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/ac588ef1c914";

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.hostname = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [ ./configuration.nix ];
    };
  };
}
