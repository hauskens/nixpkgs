{ lib, python3 }:

let
  python = python3.override {
    packageOverrides = self: super: {
      nixops = self.callPackage ./unwrapped.nix { };
    }; #// (plugins self);
  };
in
{

}
