{
  plugins.neo-tree = {
    enable = true;
        
    settings = {
      sources = [ "filesystem" "buffers" "git_status" ];
      source_selector = {
        winbar = true;
        lualine = false;
      };
      openFilesDoNotReplaceTypes = [ "terminal" "Trouble" "trouble" "qf" "Outline" ];

      filesystem = {
        bindToCwd = false;
        followCurrentFile.enabled = true;
        useLibuvFileWatcher = true;
      };

      window = {
        mappings = {
          "l" = "open";
          "h" = "close_node";
          "<space>" = "none";
          # "y" = ''
          #     function()
          #       -- local node = state.tree:get_node()
          #       -- local path = node:get_id()
          #       -- vim.fn.setreg("+", path, "c")
          #     end
          # '';
          
          # "O" = {
          # };
          # "P" = {
            # command = "toggle_preview";
            # config = { use_float = false; };
          # };
        };
      };

      defaultComponentConfigs = {
        indent = {
          withExpanders = true;
          expanderCollapsed = "";
          expanderExpanded = "";
          expanderHighlight = "NeoTreeExpander";
        };
        gitStatus = {
          symbols = {
            unstaged = "󰄱";
            staged = "󰱒";
          };
        };
      };
    };
  };
}
