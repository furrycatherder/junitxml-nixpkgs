with import <nixpkgs> {
  overlays = [ (import ./.) ];
};

pkgs
