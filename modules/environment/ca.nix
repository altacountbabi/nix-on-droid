# Copyright (c) 2019-2021, see AUTHORS. Licensed under MIT License, see LICENSE.

{ pkgs, ... }:

let
  certificate = "${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt";
in
{
  environment.etc = {
    # NixOS canonical location + Debian/Ubuntu/Arch/Gentoo compatibility.
    "ssl/certs/ca-certificates.crt".source = certificate;

    # Old NixOS compatibility.
    "ssl/certs/ca-bundle.crt".source = certificate;

    # CentOS/Fedora compatibility.
    "pki/tls/certs/ca-bundle.crt".source = certificate;
  };
}
