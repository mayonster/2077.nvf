{...}: {
  vim = {
    filetree.neo-tree = {
      enable = true;
      setupOpts = {
        enable_curosor_hijack = false;
        enable_diagnostics = true;
        enable_git_status = true;
        enable_modified_markers = true;
        enable_opened_markers = true;
        enable_refresh_on_write = true;
        add_blank_line_at_top = false;
        auto_clean_after_session_restore = false;
        default_source = "filesystem";
        filesystem.hijack_netrw_behavior = "open_default";
        git_status_async = true;
        hide_root_node = false;
        log_level = "info";
        log_to_file = false;
        open_files_do_not_replace_types = [
          "terminal"
          "Trouble"
          "qf"
          "edgy"
        ];
        open_files_in_last_window = true;
        retain_hidden_root_indent = false;
        default_component_configs = {
          git_status = {
            symbols = {
              # Change type
              added = "✚";
              modified = "";
              deleted = "✖";
              renamed = "󰁕";
              # Status type
              untracked = "󰄱";
              ignored = "";
              unstaged = "󱈲";
              staged = "";
              conflict = "";
            };
          };
        };
      };
    };
  };
}
