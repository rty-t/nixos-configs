{pkgs, ...}:

{
  programs.vim = {
    enable = true;
    defaultEditor = false; # because i use hx
    plugins = with pkgs; vimPlugins [
      vim-nix
      zoxide-vim
      skim-vim
    ];
  };
}