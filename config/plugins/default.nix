{ pkgs, ...}:{
  imports = [
    ./bufferline.nix 
    ./snacks.nix
    ./lualine.nix
    ./neotree.nix
    ./lazygit.nix
    ./gitsigns.nix
    ./telescope.nix
  ];

  # plugins.lazy.enable = true;
  plugins.tmux-navigator.enable = true;
  plugins.blame.enable = true;

  plugins.lsp = {
    enable = true;
    servers = {
      nil_ls.enable = true;
      lua_ls.enable = true;
    };
  };

  plugins.treesitter = {
    enable = true;
    highlight.enable = true;
    indent.enable = true;
    folding.enable = false;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };

  plugins.cmp.enable = true;
  plugins.cmp-treesitter.enable = true;
  plugins.cmp-nvim-lsp.enable = true;
}
