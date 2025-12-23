---@class PaletteColors
local palette = {
  -- Background Shades
  deepBlack = "#0e0e15",
  voidBlack = "#111116",
  inkBlack = "#16161e",
  stoneBlack = "#1a1a22",
  slateBlack = "#1f1f28",
  mistBlack = "#24242e",
  grayBlack = "#2a2a37",

  -- Foreground Shades
  white = "#e4e4eb",
  offWhite = "#d7d7de",
  oldWhite = "#d0d0d7",
  dimWhite = "#bdbdc4",

  -- Functional UI colors
  selection = "#353749",
  cursorLine = "#24242e",
  gutter = "#1a1a22",

  -- Grays and Neutrals
  stoneGray = "#767c9d",
  ashGray = "#6b7089",
  commentGray = "#7a7f98",
  mutedGray = "#a8adc8",

  -- Accent Colors
  pink = "#d0679d",
  rose = "#e087b3",
  teal = "#5de4c7",
  aqua = "#7ae9cc",
  green = "#91d7a3",
  paleGreen = "#a8e6b8",
  yellow = "#fffac2",
  gold = "#e7d77d",

  -- Blues
  blue = "#78a9ff",
  skyBlue = "#add7ff",
  deepBlue = "#6394e6",
  violet = "#a0a0ff",

  -- Magenta/Purple family
  magenta = "#f087bd",
  purple = "#b8a4de",
  lavender = "#d0c0f0",

  -- Cyan family
  cyan = "#89ddff",
  brightCyan = "#a3e5ff",
  paleCyan = "#b8eeff",

  -- Syntax-specific derived colors
  propertyBlue = "#8ab8ff",
  fieldCyan = "#7dd0ed",
  methodBlue = "#6fa8ea",
  exceptionMagenta = "#e087bd",
  namespaceViolet = "#a89fd9",
  booleanOrange = "#ffb454",
  keywordPurple = "#bda6ed",

  -- Additional specialized colors
  parameterPurple = "#c5b5e8",
  staticGold = "#f0d98d",
  readonlyTeal = "#6de8cb",

  -- Diff colors
  diffAddBg = "#1d3b33",
  diffChangeBg = "#2b3349",
  diffDeleteBg = "#3e202b",
  diffTextBg = "#353749",

  -- Git colors
  gitAdd = "#76d4a8",
  gitDelete = "#e46876",
  gitChange = "#e7c77d",
}

local M = {}

---@param opts? { colors?: table }
---@return { theme: ThemeColors, palette: PaletteColors}
function M.setup(opts)
  opts = opts or {}
  local override_colors = opts.colors or require("poimandres").config.colors

  -- Merge palette overrides
  local updated_palette = vim.tbl_extend("force", palette, override_colors.palette or {})

  -- Generate theme
  local theme_colors = require("poimandres.themes").generate(updated_palette)

  -- Merge theme overrides
  local theme_overrides = vim.tbl_deep_extend("force", override_colors.theme["all"] or {}, {})
  local updated_theme_colors = vim.tbl_deep_extend("force", theme_colors, theme_overrides)

  return {
    theme = updated_theme_colors,
    palette = updated_palette,
  }
end

return M
