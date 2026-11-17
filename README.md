# editor

Stock **nixpkgs Vim** (`vim-full`) via `programs.vim`: no plugins, no Neovim.

- System `/etc/vimrc`: `clipboard=unnamedplus` only when `+clipboard` and `$DISPLAY` or `$WAYLAND_DISPLAY` (avoids W23 on headless SSH); hidden EOB markers, global statusline, line numbers (bright white, `ctermfg=15`), tabs as four spaces, `Visual` reverse (`cterm`/`gui` + cleared fg/bg) reapplied after syntax and on `ColorScheme`, terminal cursor via `t_SI`/`t_EI`/`t_SR` (DECSCUSR `5`/`1`/`3`) plus `InsertEnter`/`ModeChanged` to `/dev/tty`; tmux forwards shapes via `Ss`/`Se` in the terminal module
- Built-in **syntax** and **filetype** detection (no Tree-sitter)
- `defaultEditor` (`EDITOR` via `programs.vim.defaultEditor`); **`man` uses the default pager** (no `MANPAGER` / `PAGER` in this module)

Import as a normal NixOS module.
