# This file was generated from `meta.yml`, please do not edit manually.
# Follow the instructions on https://github.com/coq-community/templates to regenerate.
{ config ? {}, withEmacs ? false, print-env ? false, do-nothing ? false,
  update-nixpkgs ? false, ci-matrix ? false,
  override ? {}, ocaml-override ? {}, global-override ? {},
  task ? null, job ? null, inNixShell ? null, src ? ./.,
}@args:
let auto = fetchGit {
  url = "https://github.com/coq-community/coq-nix-toolbox.git";
  ref = "master";
  rev = import ./.nix/coq-nix-toolbox.nix;
}; in
(import auto ({inherit src;} // args)).nix-auto

