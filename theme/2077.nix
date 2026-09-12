{ pkgs, ... }:
{
  config.vim.extraPlugins = {
    theme2077 = {
      package = pkgs.vimPlugins.2077;
      setup = ''
        require('2077').setup
      '';
    };
  };
}
