with import ./default.nix {};
let
  easy-ps = import
    (pkgs.fetchFromGitHub {
      owner = "justinwoo";
      repo = "easy-purescript-nix";
      rev = "dae91f43317fd5ff207e11ea6bf4b6130e4ba9fc";
      sha256 = "1lx6dpa8g2xa6wwhqfarw4bixibk743r0cwafmqmq6l4qjb061sa";
    }) {
    inherit pkgs;
  };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    easy-ps.purs-0_14_1
    easy-ps.spago
    easy-ps.psc-package
    easy-ps.pscid

    nodePackages.purescript-language-server
    # nodejs-15_x
  ];
}
