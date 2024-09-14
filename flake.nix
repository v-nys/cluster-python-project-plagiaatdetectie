{
  inputs = {
    nixpkgs.url = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        packages = with pkgs; [
          envsubst # to enable tests which use absolute paths
          inotify-tools
        ];
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = packages;
          shellHook =
            ''
              export APPLICATION_SOURCE_DIR="/home/vincentn/Projects/logic-based-learning-paths"
              # nohup sh -c 'while inotifywait -e modify pre-contents.lc.yaml; do envsubst -i pre-contents.lc.yaml > contents.lc.yaml; done' > /dev/null 2>&1 &
            '';
        };
      });
}
