{...}: let
  modes = [
    "n"
    "i"
    "v"
    "c"
    "t"
    "o"
    "x"
    "s"
  ];
  mkBind = mode: key: action: {
    inherit mode key action;
    silent = true;
  };
  mkNBind = key: action: mkBind "n" key action;
  mkVBind = key: action: mkBind "v" key action;
  mkAllBinf = key: action: mkBind modes key action;
in {
  vim = {
    binds = {
      whichKey.enable = true;
    };

    globals.mapleader = " ";

    keymaps = [
      {
        key = "<leader>st";
        mode = ["n"];
        desc = "Open Terminal";
        lua = true;
        action = ''
          function()
            vim.cmd.vnew()
            vim.cmd.term()
            vim.cmd.wincmd('J')
            vim.api.nvim_win_set_height(0, 15)
          end
        '';
      }
      # Window Navigation
      # CTRL + <hljk>
      (mkNBind "<C-h>" "<C-w><C-h>")
      (mkNBind "<C-l>" "<C-w><C-l>")
      (mkNBind "<C-j>" "<C-w><C-j>")
      (mkNBind "<C-k>" "<C-w><C-k>")

      # Neo-tree
      (mkNBind "\\" ":Neotree toggle<CR>")
    ];
  };
}
