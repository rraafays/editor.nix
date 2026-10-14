# editor

System Neovim via `programs.neovim` (no Home Manager).

- Lua config in `lua/editor/` (treesitter, LSP, conform, mini.nvim)
- System packages: nixd, nixfmt, lua-language-server, stylua, ripgrep
- Fontconfig: `nerd-fonts.symbols-only` for icon glyphs (same idea as `shell.nix`, duplicated on purpose for OOTB)
- `wl-clipboard` on PATH for `clipboard=unnamedplus` (works on kmscon VT when GNOME’s Wayland socket is available)
- `MANPAGER` → `nvim +Man!`

Import as a normal NixOS module. Batch formatting uses `editor/lua/editor/format.lua` (`vim.g.editor_format_file_list`).
