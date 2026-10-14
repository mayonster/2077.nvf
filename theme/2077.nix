{
  pkgs,
  lib,
  ...
}: let
  localPlugins = import ../vimPlugins.nix {inherit pkgs;};
in {
  vim = {
    theme.enable = true;
    startPlugins = with localPlugins; [
      theme-2077-nvim
    ];
    luaConfigRC.theme-2077-nvim = lib.nvim.dag.entryAfter ["pluginConfigs"] ''
      require('2077').setup()
    '';
  };
}
