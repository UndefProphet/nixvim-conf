{
  imports = [ ./bufferline.nix ./snacks.nix ./lualine.nix ./lazygit.nix];

  plugins.tmux-navigator.enable = true;
  plugins.blame.enable = true;
}
