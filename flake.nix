{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: 
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    packages.x86_64-linux.default = self.hello;
    devShell.x86_64-linux = pkgs.mkShell {
      packages = with pkgs; [
        idris2
      ];
    };
  };
}
