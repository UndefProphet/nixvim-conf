{ pkgs, lib, ...}:{
  imports = [
    ./bufferline.nix 
    ./mini.nix
    ./lualine.nix
    ./neotree.nix
    ./lazygit.nix
    ./gitsigns.nix
    ./telescope.nix
    ./dashboard.nix
  ];

  # plugins.lazy.enable = true;
  plugins.tmux-navigator.enable = true;
  # plugins.blame.enable = true;
  
  plugins.lsp = {
    enable = true;
    servers = {
      # Nix
      nixd.enable = true;

      # Web
      ts_ls.enable = true;
      html.enable = true;
      cssls.enable = true;
      jsonls.enable = true;

      # Backend
      pyright.enable = true;
      gopls.enable = true;
      rust_analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
      
      # Config / Infra
      yamlls.enable = true;
      bashls.enable = true;
      dockerls.enable = true;
    };
  };

  plugins.blink-cmp  = {
    enable = true;
    settings = {
      keymap = { preset = "default"; };
      appearance = {
        use_nvim_cmp_as_default = true;
        nerd_font_variant = "mono";
      };
      signature = { enabled = true; }; 
    };
  };

  plugins.treesitter = {
    enable = true;
    highlight.enable = true;
    indent.enable = true;
    folding.enable = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
  };
  plugins.cmp-treesitter.enable = true;
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp-buffer.enable = true;
  plugins.cmp-path.enable = true;
}
