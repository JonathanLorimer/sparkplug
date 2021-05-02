{
  system ? builtins.currentSystem,
  nixpkgs ? import ./nix/pinned-nixpkgs.nix
}:
let
  pkgs = import nixpkgs { inherit system; };
in
  {
    inherit pkgs;
  }
