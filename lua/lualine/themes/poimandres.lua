local theme = require("poimandres.colors").setup().theme

local poimandres = {}

-- ============================================================================
-- Normal Mode (Blue)
-- ============================================================================
poimandres.normal = {
  a = { bg = theme.syn.fun, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.fun },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Insert Mode (Green)
-- ============================================================================
poimandres.insert = {
  a = { bg = theme.diag.ok, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.diag.ok },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Command Mode (Orange - Changed for better distinction)
-- ============================================================================
poimandres.command = {
  a = { bg = theme.syn.number, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.number },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Visual Mode (Purple)
-- ============================================================================
poimandres.visual = {
  a = { bg = theme.syn.keyword, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.keyword },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Replace Mode (Rose - Changed from Constant to Preproc/Rose for "Danger")
-- ============================================================================
poimandres.replace = {
  a = { bg = theme.syn.preproc, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.preproc },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Terminal Mode (Teal)
-- ============================================================================
poimandres.terminal = {
  a = { bg = theme.syn.special1, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.special1 },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Inactive Window
-- ============================================================================
poimandres.inactive = {
  a = { bg = theme.ui.bg_m3, fg = theme.ui.nontext, gui = "bold" },
  b = { bg = theme.ui.bg_m3, fg = theme.ui.nontext },
  c = { bg = theme.ui.bg_m3, fg = theme.ui.nontext },
}

return poimandres
