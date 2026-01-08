# Copyright (c) 2019-2020, see AUTHORS. Licensed under MIT License, see LICENSE.

{
  pkgs ? import <nixpkgs> { },
}:

{
  nix-on-droid = pkgs.callPackage ./nix-on-droid { };
}
