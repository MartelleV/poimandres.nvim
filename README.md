# kaimandres.nvim

<div align="center">

# Kaimandres
**A robust, high-contrast, semantic theme; as a crossover between Poimandres and Kanagawa aesthetics.**

[![Lua](https://img.shields.io/badge/Lua-5.1%2B-2C4F64?style=flat-square&logo=lua&logoColor=white)](https://lua.org)
[![License](https://img.shields.io/github/license/MartelleV/kaimandres.nvim?style=flat-square&color=7e9cd8)](LICENSE)
[![Stars](https://img.shields.io/github/stars/MartelleV/kaimandres.nvim?style=flat-square&color=c4746e)](https://github.com/MartelleV/kaimandres.nvim/stargazers)

<br />

<p align="center">
  <img src="https://github.com/user-attachments/assets/3103862e-d9c6-4a01-9cf7-4778aa652782" width="100%" alt="Screenshot of Fastfetch - Superfile - Neovim Dashboard" />
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/a24eee1a-dc92-440b-a2c1-ac157baa6b05" width="100%" alt="Screenshot of Java, C++, and Python Code" />
</p>

</div>

---

## Philosophy & Motivation

> While I love the Poimandres theme family for its renowned sleek aesthetics, I found that many existing ports for Neovim too minimal or lacked the semantic depth required for heavy development workflows. Combined with the robust architecture, excellent handling of semantic highlights, and dimming logics of [Kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim), I created this theme as a balanced approach between **readability** and **aesthetics**. Hence the name: **KAIMANDRES**.

1. **Enhanced Palette**: I have cherry-picked and tuned specific shades; introducing new colors while strictly maintaining the original "soul" of the Poimandres theme and its iconic palette; to ensure that syntax elements pop without causing eye strain.
2. **Ecosystem Consistency**: This palette has been tested across my entire workflow, including **iTerm2, Ghostty, Lazygit, Neovim, and Superfile**. This ensures a smooth visual transition between the shell, file manager, and editor.

---

## Installation

Install via your favorite package manager. For me, I've always been using lazy.nvim:

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
-- plugins/kaimandres.nvim
return {
  "MartelleV/kaimandres.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('kaimandres').setup({
      -- leave empty to use default setup!
    })
    -- Some tweaks
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "kaimandres",
      callback = function()
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" }) -- Remove backgrounds of line numbers and worktree indents
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#16161e" }) -- Remove annoying blocks in Lualine (if this happens to you)
      end,
    })
  end,
}

```

---

## Configuration

Because Kaimandres is based on the Kanagawa engine, it supports a wide range of customizations.

```lua
require('kaimandres').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,      -- define vim.g.terminal_color_{0,17}
    colors = {                  -- add/modify theme and palette colors
        palette = {},
        theme = { all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    compile = false,             -- enable compiling the colorscheme
})

```

---

## Integrations

Kaimandres includes hand-tuned highlights for the following plugins:

* **Treesitter** (Standard and Context)
* **Native LSP** & **Semantic Tokens**
* **Telescope**
* **Gitsigns** & **Neogit**
* **NvimTree** & **NeoTree**
* **Blink.cmp** & **Nvim-cmp**
* **Dap-UI** (Debug Adapter Protocol)
* **Indent Blankline** & **Mini.indentscope**
* **Lazy.nvim** & **Mason**
* **Trouble** & **Aerial**
* **Mini.nvim** suite
* **Noice.nvim**'s UI popups and messages

### Lualine Support

Kaimandres also ships with a dedicated Lualine theme file.

```lua
require('lualine').setup {
  options = {
    theme = 'kaimandres'
  }
}

```

---

## Other Ports

If you don't feel like Neovim is for you but love this aesthetic, I've got your back! Go here: **[kaimandres-vscode](https://github.com/MartelleV/kaimandres-vscode)** to see the source code for the official [VS Code port](https://code.visualstudio.com/), or you can install right away via Marketplace: **[Kaimandres VS Code Theme](https://marketplace.visualstudio.com/items?itemName=martellev.kaimandres-vscode)**.

If you are a Zed user, go here: **[Kaimandres Zed Theme](https://zed-themes.com/themes/-NvUnJul7Bvewn1wS29Ff?name=Kaimandres)** and download the theme's JSON file, then put it inside your `~/.config/zed/themes` directory.

---

## Reporting Issues

If you encounter any bugs, visual inconsistencies, or unexpected behavior while using Kaimandres, please open an issue/PR, I will solve it ASAP.

When reporting an issue, please include:

* A clear description of the problem (e.g., language, steps to reproduce)
* Screenshots, if applicable
* Your Neovim version and relevant configuration

---

## Acknowledgements

This project has been built based on many inspirations. Special thanks to:

* **[Rebelot](https://github.com/rebelot)** for creating **Kanagawa.nvim** and inspired me with the incredible architecture and logic.
* **[Poimandres](https://github.com/drcmda/poimandres-theme)** developers for the original VS Code theme and the beautiful color theory.
* **[The iTerm2 Color Scheme Community](https://github.com/mbadolato/iTerm2-Color-Schemes)** for introducing me to this aesthetic.

---

## License

MIT © [MartelleV](https://github.com/MartelleV).
