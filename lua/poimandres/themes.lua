---@class SyntaxElements
---@field string ColorSpec
---@field variable ColorSpec
---@field number ColorSpec
---@field constant ColorSpec
---@field identifier ColorSpec
---@field parameter ColorSpec
---@field fun ColorSpec
---@field statement ColorSpec
---@field keyword ColorSpec
---@field operator ColorSpec
---@field preproc ColorSpec
---@field type ColorSpec
---@field regex ColorSpec
---@field deprecated ColorSpec
---@field comment ColorSpec
---@field punct ColorSpec
---@field special1 ColorSpec
---@field special2 ColorSpec
---@field special3 ColorSpec
---@field property ColorSpec
---@field field ColorSpec
---@field method ColorSpec
---@field exception ColorSpec
---@field namespace ColorSpec
---@field boolean ColorSpec
---@field readonlyTeal ColorSpec
---@field staticGold ColorSpec

local M = {}

function M.generate(palette)
  return {
    ui = {
      fg = palette.white,
      fg_dim = palette.dimWhite,
      fg_reverse = palette.inkBlack,

      bg_dim = palette.deepBlack, -- Deepest black for dimming
      bg_gutter = palette.gutter,

      -- Background hierarchy
      bg_m3 = palette.deepBlack,  -- Deepest (status lines, etc)
      bg_m2 = palette.voidBlack,  -- Floats/Popups
      bg_m1 = palette.inkBlack,   -- Main background (alt)
      bg = palette.inkBlack,      -- Main background
      bg_p1 = palette.stoneBlack, -- Light panels / folds
      bg_p2 = palette.cursorLine, -- Cursor line / selection

      special = palette.teal,
      nontext = palette.stoneGray,
      whitespace = palette.stoneGray,

      bg_search = palette.selection,
      bg_visual = palette.selection,

      pmenu = {
        fg = palette.white,
        fg_sel = palette.white,
        bg = palette.voidBlack,
        bg_sel = palette.selection,
        bg_sbar = palette.deepBlack,
        bg_thumb = palette.stoneGray,
      },
      float = {
        fg = palette.white,
        bg = palette.voidBlack,
        fg_border = palette.stoneGray,
        bg_border = palette.voidBlack,
      },
    },
    syn = {
      -- Core syntax elements
      string = palette.green,
      variable = palette.offWhite,
      number = palette.lavender,
      boolean = palette.booleanOrange,
      constant = palette.gold,
      identifier = palette.white,

      -- Specialized semantic tokens
      parameter = palette.parameterPurple,
      readonlyTeal = palette.readonlyTeal,
      staticGold = palette.staticGold,

      -- Functions and methods
      fun = palette.blue,
      method = palette.methodBlue,

      -- Keywords and statements
      statement = palette.magenta,
      keyword = palette.keywordPurple,
      operator = palette.cyan,
      exception = palette.exceptionMagenta,

      -- Types and preprocessing
      preproc = palette.rose,
      type = palette.yellow,
      regex = palette.gold,

      -- Properties and fields
      property = palette.propertyBlue,
      field = palette.fieldCyan,
      namespace = palette.namespaceViolet,

      -- Special cases
      deprecated = palette.ashGray,
      comment = palette.commentGray,

      -- Punctuations
      punct = palette.cyan,

      -- Special categories
      special1 = palette.teal,
      special2 = palette.rose,
      special3 = palette.violet,
    },
    vcs = {
      added = palette.gitAdd,
      removed = palette.gitDelete,
      changed = palette.gitChange,
    },
    diff = {
      add = palette.diffAddBg,
      delete = palette.diffDeleteBg,
      change = palette.diffChangeBg,
      text = palette.diffTextBg,
    },
    diag = {
      ok = palette.green,
      error = palette.pink,
      warning = palette.yellow,
      info = palette.blue,
      hint = palette.teal,
    },
    term = {
      palette.inkBlack,   -- 0: black
      palette.pink,       -- 1: red
      palette.green,      -- 2: green
      palette.yellow,     -- 3: yellow
      palette.blue,       -- 4: blue
      palette.magenta,    -- 5: magenta
      palette.cyan,       -- 6: cyan
      palette.white,      -- 7: white
      palette.stoneGray,  -- 8: bright black
      palette.rose,       -- 9: bright red
      palette.paleGreen,  -- 10: bright green
      palette.gold,       -- 11: bright yellow
      palette.skyBlue,    -- 12: bright blue
      palette.lavender,   -- 13: bright magenta
      palette.brightCyan, -- 14: bright cyan
      palette.white,      -- 15: bright white
    },
  }
end

return M
