local M = {}

function M.setup(colors, config)
  local theme = colors.theme
  config = config or require("kaimandres").config

  return {
    ColorColumn = { bg = theme.ui.bg_p1 },
    Conceal = { fg = theme.ui.special, bold = true },
    CurSearch = { fg = theme.ui.fg, bg = theme.ui.bg_search, bold = true },
    Cursor = { fg = theme.ui.bg, bg = theme.ui.fg },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    CursorColumn = { link = "CursorLine" },
    CursorLine = { bg = theme.ui.bg_p2 },
    Directory = { fg = theme.syn.fun },

    DiffAdd = { bg = theme.diff.add },
    DiffChange = { bg = theme.diff.change },
    DiffDelete = { fg = theme.vcs.removed, bg = theme.diff.delete },
    DiffText = { bg = theme.diff.text },

    EndOfBuffer = { fg = theme.ui.bg },
    ErrorMsg = { fg = theme.diag.error },

    WinSeparator = { fg = theme.ui.bg_m3, bg = config.dimInactive and theme.ui.bg_dim or "NONE" },
    VertSplit = { link = "WinSeparator" },

    Folded = { fg = theme.ui.special, bg = theme.ui.bg_p1 },
    FoldColumn = { fg = theme.ui.nontext, bg = theme.ui.bg_gutter },

    SignColumn = { fg = theme.ui.special, bg = theme.ui.bg_gutter },

    IncSearch = { fg = theme.ui.fg_reverse, bg = theme.diag.warning },
    Substitute = { fg = theme.ui.fg, bg = theme.vcs.removed },

    LineNr = { fg = theme.ui.nontext, bg = "none" },
    CursorLineNr = { fg = theme.diag.warning, bg = theme.ui.bg_gutter, bold = true },

    MatchParen = { fg = theme.diag.warning, bold = true },
    ModeMsg = { fg = theme.diag.warning, bold = true },

    MsgArea = vim.o.cmdheight == 0 and { link = "StatusLine" } or { fg = theme.ui.fg_dim },
    MsgSeparator = { bg = vim.o.cmdheight == 0 and theme.ui.bg or theme.ui.bg_m3, fg = theme.ui.bg_m3 },

    MoreMsg = { fg = theme.diag.info },
    NonText = { fg = theme.ui.nontext },

    Normal = { fg = theme.ui.fg, bg = not config.transparent and theme.ui.bg or "NONE" },
    NormalFloat = { fg = theme.ui.float.fg, bg = theme.ui.float.bg },

    FloatBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.float.bg_border },
    FloatTitle = { fg = theme.ui.special, bg = theme.ui.float.bg_border, bold = true },
    FloatFooter = { fg = theme.ui.nontext, bg = theme.ui.float.bg_border },

    NormalNC = config.dimInactive and { fg = theme.ui.fg_dim, bg = theme.ui.bg_dim } or { link = "Normal" },

    Pmenu = { fg = theme.ui.pmenu.fg, bg = theme.ui.pmenu.bg },
    PmenuSel = { fg = theme.ui.pmenu.fg_sel, bg = theme.ui.pmenu.bg_sel },
    PmenuKind = { fg = theme.ui.fg_dim, bg = theme.ui.pmenu.bg },
    PmenuKindSel = { fg = theme.ui.fg_dim, bg = theme.ui.pmenu.bg_sel },
    PmenuExtra = { fg = theme.ui.special, bg = theme.ui.pmenu.bg },
    PmenuExtraSel = { fg = theme.ui.special, bg = theme.ui.pmenu.bg_sel },
    PmenuSbar = { bg = theme.ui.pmenu.bg_sbar },
    PmenuThumb = { bg = theme.ui.pmenu.bg_thumb },
    PmenuBorder = { link = "FloatBorder" },

    Question = { link = "MoreMsg" },
    QuickFixLine = { bg = theme.ui.bg_p1 },

    Search = { fg = theme.ui.fg, bg = theme.ui.bg_search },
    SpecialKey = { fg = theme.ui.special },

    SpellBad = { undercurl = config.undercurl, underline = not config.undercurl, sp = theme.diag.error },
    SpellCap = { undercurl = config.undercurl, underline = not config.undercurl, sp = theme.diag.warning },
    SpellLocal = { undercurl = config.undercurl, underline = not config.undercurl, sp = theme.diag.warning },
    SpellRare = { undercurl = config.undercurl, underline = not config.undercurl, sp = theme.diag.warning },

    StatusLine = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
    StatusLineNC = { fg = theme.ui.nontext, bg = theme.ui.bg_m3 },

    TabLine = { bg = theme.ui.bg_m3, fg = theme.ui.special },
    TabLineFill = { bg = theme.ui.bg },
    TabLineSel = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1 },

    Title = { fg = theme.syn.fun, bold = true },

    Visual = { bg = theme.ui.bg_visual },
    VisualNOS = { link = "Visual" },

    WarningMsg = { fg = theme.diag.warning },
    Whitespace = { fg = theme.ui.whitespace },

    WildMenu = { link = "Pmenu" },

    WinBar = { fg = theme.ui.fg_dim, bg = "NONE" },
    WinBarNC = { fg = theme.ui.fg_dim, bg = config.dimInactive and theme.ui.bg_dim or "NONE" },

    debugPC = { bg = theme.diff.delete },
    debugBreakpoint = { fg = theme.syn.special1, bg = theme.ui.bg_gutter },

    -- LSP References
    LspReferenceText = { bg = theme.diff.text },
    LspReferenceRead = { link = "LspReferenceText" },
    LspReferenceWrite = { bg = theme.diff.text, underline = true },

    -- Diagnostics
    DiagnosticError = { fg = theme.diag.error },
    DiagnosticWarn = { fg = theme.diag.warning },
    DiagnosticInfo = { fg = theme.diag.info },
    DiagnosticHint = { fg = theme.diag.hint },
    DiagnosticOk = { fg = theme.diag.ok },

    DiagnosticFloatingError = { fg = theme.diag.error },
    DiagnosticFloatingWarn = { fg = theme.diag.warning },
    DiagnosticFloatingInfo = { fg = theme.diag.info },
    DiagnosticFloatingHint = { fg = theme.diag.hint },
    DiagnosticFloatingOk = { fg = theme.diag.ok },

    DiagnosticSignError = { fg = theme.diag.error, bg = theme.ui.bg_gutter },
    DiagnosticSignWarn = { fg = theme.diag.warning, bg = theme.ui.bg_gutter },
    DiagnosticSignInfo = { fg = theme.diag.info, bg = theme.ui.bg_gutter },
    DiagnosticSignHint = { fg = theme.diag.hint, bg = theme.ui.bg_gutter },

    DiagnosticVirtualTextError = { link = "DiagnosticError" },
    DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
    DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
    DiagnosticVirtualTextHint = { link = "DiagnosticHint" },

    DiagnosticUnderlineError = {
      undercurl = config.undercurl,
      underline = not config.undercurl,
      sp = theme.diag.error,
    },
    DiagnosticUnderlineWarn = {
      undercurl = config.undercurl,
      underline = not config.undercurl,
      sp = theme.diag.warning,
    },
    DiagnosticUnderlineInfo = {
      undercurl = config.undercurl,
      underline = not config.undercurl,
      sp = theme.diag.info,
    },
    DiagnosticUnderlineHint = {
      undercurl = config.undercurl,
      underline = not config.undercurl,
      sp = theme.diag.hint,
    },

    LspSignatureActiveParameter = { fg = theme.diag.warning },
    LspCodeLens = { fg = theme.syn.comment },

    -- Git diff
    diffAdded = { fg = theme.vcs.added },
    diffRemoved = { fg = theme.vcs.removed },
    diffDeleted = { fg = theme.vcs.removed },
    diffChanged = { fg = theme.vcs.changed },
    diffOldFile = { fg = theme.vcs.removed },
    diffNewFile = { fg = theme.vcs.added },
  }
end

return M
