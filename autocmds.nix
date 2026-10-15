{lib, ...}: let
  mkLua = lib.generators.mkLuaInline;
in {
  vim = {
    autocmds = [
      {
        enable = false;
        group = "custom-term-open";
        desc = "Open custom terminal";
        callback = mkLua ''
          function()
            vim.opt.number = false
            vim.opt.relativenumber = true
          end
        '';
      }
    ];
  };
}
