# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration built on [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager. It supports two runtime modes: standalone Neovim and as a VSCode Neovim extension (detected via `vim.g.vscode`).

## Architecture

**Entry point:** `init.lua` loads core config modules, then conditionally loads `config.vscode` (VSCode extension mode) or `config.lazy` (full Neovim mode with plugins).

**Config modules** (`lua/config/`):
- `options.lua` — Vim options (tabs, search, UI). netrw is disabled in favor of nvim-tree.
- `keymaps.lua` — Global keymaps. Leader is `<Space>`, localleader is `\`.
- `autocmds.lua` — Autocommands (trim whitespace on save, yank highlight). Skipped in VSCode mode.
- `lazy.lua` — Bootstraps lazy.nvim, imports all plugins from `lua/plugins/`.
- `vscode.lua` — VSCode-specific keymaps that proxy to VSCode actions (replaces telescope, nvim-tree, gitsigns, etc.).

**Plugins** (`lua/plugins/`): Each file returns a lazy.nvim plugin spec. All files in `lua/plugins/` are auto-imported by `lazy.lua`.

**Java support** (`ftplugin/java.lua`): Uses `nvim-jdtls` instead of mason-lspconfig to start the Java LSP — this file runs automatically when a `.java` file is opened.

## Key Plugin Decisions

- **Completion:** `blink.cmp` (not nvim-cmp) with `LuaSnip` for snippets
- **LSP:** `nvim-lspconfig` + `mason` + `mason-lspconfig` + `mason-tool-installer`. Java uses `nvim-jdtls` via ftplugin instead.
- **Formatting:** `conform.nvim` — formats on save. Uses `stylua` for Lua, `prettierd`/`prettier` for JS. C/C++ formatting is explicitly disabled.
- **File tree:** `nvim-tree` (`<leader>e` to toggle). netrw is disabled.
- **Colorscheme:** `rose-pine` (kanagawa and catppuccin are commented out as alternatives)
- **Terminal:** `toggleterm.nvim` — `<C-\>` to toggle, or `<leader>tf/th/tv` for float/horizontal/vertical

## Adding a New Plugin

Create a new file in `lua/plugins/` returning a lazy.nvim spec table. It will be auto-loaded — no registration needed elsewhere.

## Mason-managed Tools

The following are auto-installed via `mason-tool-installer` (configured in `nvim-lspconfig.lua`):
- LSP servers: `lua_ls`, `ts_ls`, `eslint-lsp`, `typescript-language-server`, `tailwindcss-language-server`, `jdtls`
- Formatters: `stylua`

## Key Keybindings Reference

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle nvim-tree |
| `<leader>sf` | Telescope: find files |
| `<leader>sg` | Telescope: live grep |
| `<leader>f` | Format buffer (conform) |
| `<leader>rn` | LSP rename |
| `<leader>ca` | LSP code action |
| `<leader>gd` | Goto definition |
| `<leader>ha` | Harpoon: add file |
| `<leader>hl` | Harpoon: toggle menu |
| `<C-\>` | Toggle terminal |
| `kj` | Exit insert mode |
