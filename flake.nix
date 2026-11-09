{
inputs.nixpkgs.url = "git+ssh://git@github.com/NixOS/nixpkgs";
  outputs = { self, nixpkgs }:
    {
      devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        packages = [ nixpkgs.legacyPackages.x86_64-linux.nodejs-slim_latest  nixpkgs.legacyPackages.x86_64-linux.pnpm  ];
      };
    };
}
