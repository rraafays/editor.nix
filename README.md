# editor

Stock **nixpkgs Vim** (`vim-full`) via `programs.vim`: no plugins, no Neovim.

- System `/etc/vimrc`: desktop clipboard, hidden EOB markers, global statusline, tabs as four spaces
- Built-in **syntax** and **filetype** detection (no Tree-sitter)
- `defaultEditor` (`EDITOR` via `programs.vim.defaultEditor`); **`man` uses the default pager** (no `MANPAGER` / `PAGER` in this module)

Import as a normal NixOS module.
