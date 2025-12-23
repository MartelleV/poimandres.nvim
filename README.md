# poimandres.nvim

<div align="center">
  <p>
    <a href="https://lua.org">
      <img src="https://img.shields.io/badge/Lua-5.1%2B-2C4F64?style=for-the-badge&logo=lua" alt="Lua" />
    </a>
  </p>
  <p>
    <img alt="Screenshot of Neovim Dashboard" />
  </p>
  <p>
    <img alt="Screenshot of Java, C++, and Python Code" />
  </p>
  <p>
    <strong>A robust, high-contrast, semantic port of the Poimandres aesthetic for Neovim.</strong>
  </p>
</div>

## Philosophy & Motivation

While the Poimandres theme family is renowned for its sleek inspired aesthetics, I found that many existing ports for Neovim too minimal or lacked the semantic depth required for heavy development workflows.

So, my port for **poimandres.nvim** was born out of a specific need: **Readability and Aesthetics.**

1.  **Enhanced Palette**: I have cherry-picked and tuned specific shades; introducing new colors while strictly maintaining the original "soul" of the Poimandres theme and its iconic palette; to ensure that syntax elements pop without causing eye strain.
2.  **Ecosystem Consistency**: This palette has been tested across my entire workflow, including **iTerm2, Ghostty, Lazygit, Neovim, and Superfile**. This ensures a smooth visual transition between the shell, file manager, and editor.
3.  **Robust Architecture**: I have adopted the architecture of [Kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) because of its excellent handling of semantic highlights, dimming logic, and compilation speed (I am a huge Kanagawa fan as well, so shout out to Rebelot for this awesome theme).

## Installation

Install via your favorite package manager. For me, I've always been using Lazy.nvim:

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
-- plugins/poimandres.nvim
return {
  "MartelleV/poimandres.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('poimandres').setup({
      -- leave empty to use default setup!
    })
    -- Some tweaks
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "poimandres",
      callback = function()
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" }) -- Remove backgrounds of line numbers and worktree indents
        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#16161e" }) -- Remove annoying blocks in Lualine (if this happens to you)
      end,
    })
  end,
}

```

## Configuration

Because this theme is built on the Kanagawa engine, it supports a wide range of customizations.

```lua
require('poimandres').setup({
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

## Integrations

This theme includes hand-tuned highlights for the following plugins, ensuring they fit with the Poimandres Darker aesthetic:

* **Treesitter** (Standard and Context)
* **Native LSP** & **Semantic Tokens**
* **Telescope**
* **Gitsigns** & **Neogit**
* **NvimTree** & **NeoTree**
* **Blink.cmp** & **Nvim-cmp**
* **Dap-UI** (Debug Adapter Protocol)
* **Indent Blankline** & **Mini.indentscope**
* **Lazy.nvim** & **Mason**
* **Notify** & **Noice**
* **Trouble** & **Aerial**
* **Mini.nvim** suite

### Lualine Support

This theme ships with a dedicated Lualine theme file.

```lua
require('lualine').setup {
  options = {
    theme = 'poimandres'
  }
}

```
## Reporting Issues

If you encounter any bugs, visual inconsistencies, or unexpected behavior while using this theme, please open an issue/PR, I will solve it ASAP.

When reporting an issue, please include:
- A clear description of the problem
- Screenshots, if applicable
- Your Neovim version and relevant configuration

## Acknowledgements

This project has been built based on many inspirations. Special thanks to:

* **[Rebelot](https://github.com/rebelot)** for creating **Kanagawa.nvim** and inspired me with the incredible architecture and logic.
* **[Poimandres](https://github.com/drcmda/poimandres-theme)** developers for the original VS Code theme and the beautiful color theory.
* **[The iTerm2 Color Scheme Community](https://github.com/mbadolato/iTerm2-Color-Schemes)** for introducing me to this aesthetic.

## License

MIT © MartelleV.
