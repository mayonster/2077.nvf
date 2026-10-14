{
  pkgs,
  inputs ? import ./.tack,
  ...
}: let
  mkPlugin = name: let
    meta = inputs._meta.${name};
  in
    pkgs.vimUtils.buildVimPlugin {
      pname = name;
      src = inputs.${name};
      version = meta.version or meta.tag or meta.rev or "git";
    };
in {
  theme-2077-nvim = mkPlugin "2077.nvim";
}
