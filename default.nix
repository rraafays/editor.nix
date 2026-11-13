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
      set expandtab tabstop=4 shiftwidth=4 softtabstop=4
      set number
      highlight Visual cterm=reverse gui=reverse

      function! s:SendCursorShape(shape) abort
        let l:seq = printf("\033[%sq", a:shape)
        silent call system('printf ' . shellescape(l:seq) . ' > /dev/tty')
      endfunction

      let &t_SI = "\<Esc>[5 q"
      let &t_EI = "\<Esc>[1 q"
      let &t_SR = "\<Esc>[3 q"

      augroup vim_cursor_shape
        autocmd!
        autocmd VimEnter * call s:SendCursorShape(1)
        autocmd ModeChanged [vV\x16]*:[nN]* call s:SendCursorShape(1)
        autocmd InsertEnter * call s:SendCursorShape(mode(1) =~# '^R' ? 3 : 5)
        autocmd InsertLeave * call s:SendCursorShape(1)
        autocmd ModeChanged *:[vV\x16]* call s:SendCursorShape(2)
      augroup END

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
