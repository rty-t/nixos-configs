{pkgs, ...}:

{
  programs.vim = {
    enable = true;
    defaultEditor = false; # because i use hx
    settings = {
      number = true;
    };
    plugins = with pkgs.vimPlugins; [
      vim-nix
      zoxide-vim
      skim-vim
      auto-pairs
      vim-polyglot
      cmp-fish
    ];
  };
}
