{
  pkgs,
  ...
}:

{
  environment = {
    etc."vimrc".text = ''
      set nocompatible
      set clipboard=unnamedplus
      set fillchars=vert:\|,fold:\ ,eob:\ 
      set laststatus=3
      set noshowmode
      set expandtab tabstop=4 shiftwidth=4 softtabstop=4
      syntax on
      filetype on
    '';
  };

  programs.vim = {
    enable = true;
    defaultEditor = true;
    package = pkgs.vim-full;
  };
}
