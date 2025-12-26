# TODO: lines between each scope/indent
{ pkgs, ...}:{
  plugins = {
    snacks = {
      enable = true;
      settings = {
        bigfile.enabled = true;
        # dashboard.enabled = true;
        explorer.enabled = true;
        indent.enabled = true;
        input.enabled = true;
        picker.enabled = false;
        notifier.enabled = true;
        quickfile.enabled = true;
        scope.enabled = true;
        scroll.enabled = true;
        statuscolumn.enabled = true;
        words.enabled = true;
      };
    }; 
  };

  extraPackages = [
    pkgs.ripgrep # required for explorer search
  ];
}
