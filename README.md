# editor

Stock **nixpkgs Vim** (`vim-full`) via `programs.vim`: no plugins, no Neovim.

- System `/etc/vimrc`: desktop clipboard, hidden EOB markers, global statusline, line numbers, tabs as four spaces, `Visual` with `cterm=reverse` and `gui=reverse`, terminal cursor via Vim `t_SI`/`t_EI`/`t_SR` (DECSCUSR `5`/`1`/`3`) plus `InsertEnter`/`ModeChanged` to `/dev/tty`; tmux forwards shapes via `Ss`/`Se` in the terminal module
- Built-in **syntax** and **filetype** detection (no Tree-sitter)
- `defaultEditor` (`EDITOR` via `programs.vim.defaultEditor`); **`man` uses the default pager** (no `MANPAGER` / `PAGER` in this module)

Import as a normal NixOS module.
