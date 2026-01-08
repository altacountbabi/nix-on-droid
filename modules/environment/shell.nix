# Copyright (c) 2019-2021, see AUTHORS. Licensed under MIT License, see LICENSE.

{
  config,
  ...
}:

{
  config = {
    environment.etc =
      let
        text = ''
          . "${config.build.sessionInit}/etc/profile.d/nix-on-droid-session-init.sh"
        '';
      in
      {
        "profile".text = text;
        "zshenv".text = text;
      };
  };
}
