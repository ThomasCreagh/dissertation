# AI-generated (Claude Opus 5.5, 2026-11-13). AI ref: 3
# Dev shell for the dissertation repo. Enter with `nix develop`.
{
  description = "Dissertation dev shell";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
    in
    {
      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShell {
          packages = [
            # for sandboxing ai
            pkgs.bubblewrap
            pkgs.socat
            # pdftotext / pdftoppm: lets Claude Code read the papers in sources/private/papers
            pkgs.poppler-utils
          ];
        };
      });
    };
}
