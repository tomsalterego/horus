{
  description = "Horus";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      with nixpkgs.legacyPackages.${system};
      {
        devShells.default = mkShell {
          packages = [
            ansible
            ansible-lint
            git
            gnumake
            k9s
            kubectl
            neovim
            openssh
            pre-commit
            shellcheck
            opentofu
            yamllint

            (python3.withPackages (p: with p; [
              kubernetes
            ]))
          ];
        };
      }
    );
}
