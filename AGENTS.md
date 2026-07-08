# AGENTS.md

This file provides guidance to AI coding agents when working with code in this repository.

## Overview

Neovim configuration based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). The entire core config lives in a single `init.lua`. Personal plugins are added in `lua/custom/plugins/`.

## Plugin Manager

This config uses **`vim.pack`** — Neovim's built-in plugin manager (0.12+). It is **not** lazy.nvim. Plugins are registered with:

```lua
vim.pack.add { "https://github.com/author/plugin" }
```

Build hooks run via the `PackChanged` autocmd pattern. The lockfile is `nvim-pack-lock.json`.

## Architecture

`init.lua` is organized into numbered `do ... end` sections:

1. Options
2. Keymaps
3. Plugin manager bootstrap
4. UI/UX plugins (tokyonight, which-key, gitsigns, mini.nvim, todo-comments)
5. Search (Telescope + fzf-native)
6. LSP (nvim-lspconfig + Mason; servers: `lua_ls`, `pyright`, `stylua`)
7. Formatting (conform.nvim — `<leader>f`)
8. Autocomplete (blink.cmp + LuaSnip)
9. Treesitter
10. Extras loader (kickstart optional plugins + `require 'custom.plugins'`)
11. User commands

## Adding Custom Plugins

Drop a `.lua` file in `lua/custom/plugins/`. The `init.lua` in that directory auto-requires every sibling `*.lua` file — no manual registration needed.

## Formatting

Lua files are formatted with **StyLua**. Config is in `.stylua.toml`. The keymap `<leader>f` triggers conform.nvim formatting inside Neovim.
