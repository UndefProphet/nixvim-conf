{
  imports = [ ./bufferline.nix ./snacks.nix ./lualine.nix ./neotree.nix ./lazygit.nix ./gitsigns.nix];

  plugins.tmux-navigator.enable = true;
  plugins.blame.enable = true;
}
