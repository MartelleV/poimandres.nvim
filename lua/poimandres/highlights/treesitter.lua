local M = {}

function M.setup(colors, config)
  config = config or require("poimandres").config
  local theme = colors.theme

  return {
    -- ========================================================================
    -- Variables
    -- ========================================================================
    ["@variable"] = { fg = theme.syn.variable },
    ["@variable.builtin"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@variable.parameter"] = { fg = theme.syn.parameter },
    ["@variable.parameter.builtin"] = { fg = theme.syn.parameter, italic = true },
    ["@variable.member"] = { fg = theme.syn.property },
    ["@variable.member.key"] = { fg = theme.syn.property },

    -- ========================================================================
    -- Constants
    -- ========================================================================
    ["@constant"] = { fg = theme.syn.constant },
    ["@constant.builtin"] = { fg = theme.syn.constant, bold = true },
    ["@constant.macro"] = { fg = theme.syn.preproc, bold = true },

    -- ========================================================================
    -- Modules and Namespaces
    -- ========================================================================
    ["@module"] = { fg = theme.syn.namespace },
    ["@module.builtin"] = { fg = theme.syn.namespace, bold = true },
    ["@namespace"] = { fg = theme.syn.namespace },

    -- ========================================================================
    -- Strings
    -- ========================================================================
    ["@string"] = { fg = theme.syn.string },
    ["@string.documentation"] = { fg = theme.syn.comment, italic = true },
    ["@string.regexp"] = { fg = theme.syn.regex },
    ["@string.escape"] = { fg = theme.syn.regex, bold = true },
    ["@string.special"] = { fg = theme.syn.special1 },
    ["@string.special.symbol"] = { fg = theme.syn.identifier },
    ["@string.special.url"] = { fg = theme.syn.special1, undercurl = true },
    ["@string.special.path"] = { fg = theme.syn.string },

    -- ========================================================================
    -- Characters and Numbers
    -- ========================================================================
    ["@character"] = { fg = theme.syn.string },
    ["@character.special"] = { fg = theme.syn.regex, bold = true },
    ["@number"] = { fg = theme.syn.number },
    ["@number.float"] = { fg = theme.syn.number },
    ["@boolean"] = { fg = theme.syn.boolean, bold = true },

    -- ========================================================================
    -- Functions
    -- ========================================================================
    ["@function"] = { fg = theme.syn.fun },
    ["@function.builtin"] = { fg = theme.syn.fun, bold = true },
    ["@function.call"] = { fg = theme.syn.fun },
    ["@function.macro"] = { fg = theme.syn.preproc, bold = true },
    ["@function.method"] = { fg = theme.syn.method },
    ["@function.method.call"] = { fg = theme.syn.method },

    -- ========================================================================
    -- Constructors
    -- ========================================================================
    ["@constructor"] = { fg = theme.syn.special1 },

    -- ========================================================================
    -- Operators
    -- ========================================================================
    ["@operator"] = { fg = theme.syn.operator },

    -- ========================================================================
    -- Keywords - Comprehensive Coverage
    -- ========================================================================
    ["@keyword"] = { fg = theme.syn.keyword },
    ["@keyword.coroutine"] = { fg = theme.syn.keyword, italic = true },
    ["@keyword.function"] = { fg = theme.syn.keyword },
    ["@keyword.operator"] = { fg = theme.syn.keyword },
    ["@keyword.import"] = { fg = theme.syn.statement, italic = true },
    ["@keyword.type"] = { fg = theme.syn.keyword },
    ["@keyword.modifier"] = { fg = theme.syn.keyword },
    ["@keyword.repeat"] = { fg = theme.syn.keyword },
    ["@keyword.return"] = { fg = theme.syn.statement, bold = true },
    ["@keyword.debug"] = { fg = theme.diag.warning, bold = true },
    ["@keyword.exception"] = { fg = theme.syn.exception, bold = true },
    ["@keyword.conditional"] = { fg = theme.syn.keyword },
    ["@keyword.conditional.ternary"] = { fg = theme.syn.operator },
    ["@keyword.directive"] = { fg = theme.syn.preproc },
    ["@keyword.directive.define"] = { fg = theme.syn.preproc, bold = true },
    ["@keyword.storage"] = { fg = theme.syn.keyword, bold = true },
    ["@keyword.export"] = { fg = theme.syn.statement, bold = true },

    -- ========================================================================
    -- Punctuation
    -- ========================================================================
    ["@punctuation.delimiter"] = { fg = theme.syn.punct },
    ["@punctuation.bracket"] = { fg = theme.syn.punct },
    ["@punctuation.special"] = { fg = theme.syn.special1 },

    -- ========================================================================
    -- Comments
    -- ========================================================================
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { fg = theme.syn.comment, italic = true },
    ["@comment.error"] = { fg = theme.ui.fg, bg = theme.diag.error, bold = true },
    ["@comment.warning"] = { fg = theme.ui.fg_reverse, bg = theme.diag.warning, bold = true },
    ["@comment.todo"] = { fg = theme.ui.fg_reverse, bg = theme.diag.info, bold = true },
    ["@comment.note"] = { fg = theme.ui.fg_reverse, bg = theme.diag.hint, bold = true },

    -- ========================================================================
    -- Types
    -- ========================================================================
    ["@type"] = { fg = theme.syn.type },
    ["@type.builtin"] = { fg = theme.syn.type, italic = true },
    ["@type.definition"] = { fg = theme.syn.type },
    ["@type.qualifier"] = { fg = theme.syn.keyword },

    -- ========================================================================
    -- Attributes
    -- ========================================================================
    ["@attribute"] = { fg = theme.syn.special1 },
    ["@attribute.builtin"] = { fg = theme.syn.special2, bold = true },

    -- ========================================================================
    -- Properties and Fields
    -- ========================================================================
    ["@property"] = { fg = theme.syn.property },
    ["@field"] = { fg = theme.syn.field },

    -- ========================================================================
    -- Labels
    -- ========================================================================
    ["@label"] = { fg = theme.syn.special1, bold = true },

    -- ========================================================================
    -- Markup (Markdown, etc.)
    -- ========================================================================
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    -- Headings
    ["@markup.heading"] = { fg = theme.syn.fun, bold = true },
    ["@markup.heading.1"] = { fg = theme.syn.fun, bold = true },
    ["@markup.heading.2"] = { fg = theme.syn.special1, bold = true },
    ["@markup.heading.3"] = { fg = theme.syn.identifier, bold = true },
    ["@markup.heading.4"] = { fg = theme.syn.type, bold = true },
    ["@markup.heading.5"] = { fg = theme.syn.keyword, bold = true },
    ["@markup.heading.6"] = { fg = theme.syn.constant, bold = true },

    -- Other markup
    ["@markup.quote"] = { fg = theme.syn.comment, italic = true },
    ["@markup.math"] = { fg = theme.syn.special1 },
    ["@markup.environment"] = { fg = theme.syn.keyword },
    ["@markup.link"] = { fg = theme.syn.special1, underline = true },
    ["@markup.link.label"] = { fg = theme.syn.string },
    ["@markup.link.url"] = { fg = theme.syn.property, underline = true },
    ["@markup.raw"] = { fg = theme.syn.string },
    ["@markup.raw.block"] = { fg = theme.syn.string, bg = theme.ui.bg_p1 },
    ["@markup.list"] = { fg = theme.syn.special1 },
    ["@markup.list.checked"] = { fg = theme.diag.ok, bold = true },
    ["@markup.list.unchecked"] = { fg = theme.syn.punct },

    -- ========================================================================
    -- Diff
    -- ========================================================================
    ["@diff.plus"] = { fg = theme.vcs.added },
    ["@diff.minus"] = { fg = theme.vcs.removed },
    ["@diff.delta"] = { fg = theme.vcs.changed },

    -- ========================================================================
    -- Tags (HTML/XML/JSX)
    -- ========================================================================
    ["@tag"] = { fg = theme.syn.keyword },
    ["@tag.builtin"] = { fg = theme.syn.keyword, bold = true },
    ["@tag.attribute"] = { fg = theme.syn.identifier, italic = true },
    ["@tag.delimiter"] = { fg = theme.syn.punct },

    -- ========================================================================
    -- Additional Semantic Tokens
    -- ========================================================================
    ["@symbol"] = { fg = theme.syn.identifier },
    ["@text"] = { fg = theme.ui.fg },
    ["@text.literal"] = { fg = theme.syn.string },
    ["@text.reference"] = { fg = theme.syn.special1 },
    ["@text.title"] = { fg = theme.syn.fun, bold = true },
    ["@text.uri"] = { fg = theme.syn.property, underline = true },
    ["@text.underline"] = { underline = true },
    ["@text.todo"] = { fg = theme.ui.fg_reverse, bg = theme.diag.info, bold = true },
    ["@text.note"] = { fg = theme.ui.fg_reverse, bg = theme.diag.hint, bold = true },
    ["@text.warning"] = { fg = theme.ui.fg_reverse, bg = theme.diag.warning, bold = true },
    ["@text.danger"] = { fg = theme.ui.fg, bg = theme.diag.error, bold = true },
    ["@text.diff.add"] = { fg = theme.vcs.added },
    ["@text.diff.delete"] = { fg = theme.vcs.removed },

    -- ========================================================================
    -- Language-Specific: Lua
    -- ========================================================================
    ["@constructor.lua"] = { fg = theme.syn.keyword },
    ["@function.call.lua"] = { fg = theme.syn.fun },
    ["@lsp.type.property.lua"] = { fg = theme.syn.property },

    -- ========================================================================
    -- Language-Specific: JavaScript/TypeScript
    -- ========================================================================
    ["@variable.builtin.javascript"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@variable.builtin.typescript"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@keyword.operator.javascript"] = { fg = theme.syn.keyword },
    ["@keyword.operator.typescript"] = { fg = theme.syn.keyword },
    ["@constructor.javascript"] = { fg = theme.syn.type },
    ["@constructor.typescript"] = { fg = theme.syn.type },

    -- JSX/TSX
    ["@tag.tsx"] = { fg = theme.syn.keyword },
    ["@tag.jsx"] = { fg = theme.syn.keyword },
    ["@tag.attribute.tsx"] = { fg = theme.syn.identifier, italic = true },
    ["@tag.attribute.jsx"] = { fg = theme.syn.identifier, italic = true },
    ["@tag.delimiter.tsx"] = { fg = theme.syn.punct },
    ["@tag.delimiter.jsx"] = { fg = theme.syn.punct },
    ["@constructor.tsx"] = { fg = theme.syn.type },
    ["@constructor.jsx"] = { fg = theme.syn.type },

    -- ========================================================================
    -- Language-Specific: Vue
    -- ========================================================================
    ["@tag.vue"] = { fg = theme.syn.keyword },
    ["@tag.attribute.vue"] = { fg = theme.syn.identifier, italic = true },
    ["@tag.delimiter.vue"] = { fg = theme.syn.punct },
    ["@variable.member.vue"] = { fg = theme.syn.property },

    -- ========================================================================
    -- Language-Specific: Python
    -- ========================================================================
    ["@variable.builtin.python"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@variable.parameter.python"] = { fg = theme.syn.parameter },
    ["@function.builtin.python"] = { fg = theme.syn.fun, bold = true },
    ["@type.builtin.python"] = { fg = theme.syn.type, bold = true },
    ["@attribute.python"] = { fg = theme.syn.special1, italic = true },
    ["@keyword.operator.python"] = { fg = theme.syn.keyword },
    ["@exception.python"] = { fg = theme.syn.exception, bold = true },

    -- ========================================================================
    -- Language-Specific: Rust
    -- ========================================================================
    ["@keyword.storage.rust"] = { fg = theme.syn.keyword, bold = true },
    ["@type.builtin.rust"] = { fg = theme.syn.type, bold = true },
    ["@attribute.rust"] = { fg = theme.syn.special1 },
    ["@function.macro.rust"] = { fg = theme.syn.preproc, bold = true },
    ["@variable.builtin.rust"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@namespace.rust"] = { fg = theme.syn.namespace },
    ["@constant.builtin.rust"] = { fg = theme.syn.constant, bold = true },

    -- ========================================================================
    -- Language-Specific: Go
    -- ========================================================================
    ["@keyword.function.go"] = { fg = theme.syn.keyword },
    ["@keyword.import.go"] = { fg = theme.syn.statement, italic = true },
    ["@type.builtin.go"] = { fg = theme.syn.type, bold = true },
    ["@function.builtin.go"] = { fg = theme.syn.fun, bold = true },
    ["@variable.builtin.go"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@constant.builtin.go"] = { fg = theme.syn.constant, bold = true },
    ["@namespace.go"] = { fg = theme.syn.namespace },

    -- ========================================================================
    -- Language-Specific: C/C++
    -- ========================================================================
    ["@keyword.directive.c"] = { fg = theme.syn.preproc },
    ["@keyword.directive.cpp"] = { fg = theme.syn.preproc },
    ["@keyword.directive.define.c"] = { fg = theme.syn.preproc, bold = true },
    ["@keyword.directive.define.cpp"] = { fg = theme.syn.preproc, bold = true },
    ["@constant.macro.c"] = { fg = theme.syn.preproc, bold = true },
    ["@constant.macro.cpp"] = { fg = theme.syn.preproc, bold = true },
    ["@type.builtin.c"] = { fg = theme.syn.type, bold = true },
    ["@type.builtin.cpp"] = { fg = theme.syn.type, bold = true },
    ["@namespace.cpp"] = { fg = theme.syn.namespace },
    ["@function.builtin.c"] = { fg = theme.syn.fun, bold = true },
    ["@function.builtin.cpp"] = { fg = theme.syn.fun, bold = true },
    ["@keyword.storage.cpp"] = { fg = theme.syn.keyword, bold = true },
    ["@keyword.operator.cpp"] = { fg = theme.syn.keyword },

    -- ========================================================================
    -- Language-Specific: C#
    -- ========================================================================
    ["@keyword.storage.cs"] = { fg = theme.syn.keyword, bold = true },
    ["@type.builtin.cs"] = { fg = theme.syn.type, bold = true },
    ["@attribute.cs"] = { fg = theme.syn.special1 },
    ["@namespace.cs"] = { fg = theme.syn.namespace },
    ["@property.cs"] = { fg = theme.syn.property },
    ["@variable.builtin.cs"] = { fg = theme.syn.special2, italic = true, bold = true },

    -- ========================================================================
    -- Language-Specific: Java
    -- ========================================================================
    ["@keyword.import.java"] = { fg = theme.syn.statement, italic = true },
    ["@type.builtin.java"] = { fg = theme.syn.type, bold = true },
    ["@attribute.java"] = { fg = theme.syn.special1 },
    ["@namespace.java"] = { fg = theme.syn.namespace },
    ["@constant.builtin.java"] = { fg = theme.syn.constant, bold = true },
    ["@variable.builtin.java"] = { fg = theme.syn.special2, italic = true, bold = true },

    -- ========================================================================
    -- Language-Specific: Kotlin
    -- ========================================================================
    ["@keyword.import.kotlin"] = { fg = theme.syn.statement, italic = true },
    ["@type.builtin.kotlin"] = { fg = theme.syn.type, bold = true },
    ["@attribute.kotlin"] = { fg = theme.syn.special1 },
    ["@namespace.kotlin"] = { fg = theme.syn.namespace },
    ["@variable.builtin.kotlin"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@function.builtin.kotlin"] = { fg = theme.syn.fun, bold = true },

    -- ========================================================================
    -- Language-Specific: Zig
    -- ========================================================================
    ["@function.call.zig"] = { fg = theme.syn.fun },
    ["@function.builtin.zig"] = { fg = theme.syn.fun, bold = true },
    ["@type.builtin.zig"] = { fg = theme.syn.type, bold = true },
    ["@constant.builtin.zig"] = { fg = theme.syn.constant, bold = true },
    ["@variable.builtin.zig"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@keyword.storage.zig"] = { fg = theme.syn.keyword, bold = true },
    ["@namespace.zig"] = { fg = theme.syn.namespace },

    -- ========================================================================
    -- Language-Specific: Elixir
    -- ========================================================================
    ["@keyword.function.elixir"] = { fg = theme.syn.keyword, bold = true },
    ["@keyword.import.elixir"] = { fg = theme.syn.statement, italic = true },
    ["@variable.builtin.elixir"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@namespace.elixir"] = { fg = theme.syn.namespace },
    ["@attribute.elixir"] = { fg = theme.syn.special1 },
    ["@function.macro.elixir"] = { fg = theme.syn.preproc, bold = true },
    ["@constant.builtin.elixir"] = { fg = theme.syn.constant, bold = true },
    ["@symbol.elixir"] = { fg = theme.syn.constant },

    -- ========================================================================
    -- Language-Specific: HTML
    -- ========================================================================
    ["@tag.html"] = { fg = theme.syn.keyword },
    ["@tag.attribute.html"] = { fg = theme.syn.identifier, italic = true },
    ["@tag.delimiter.html"] = { fg = theme.syn.punct },
    ["@string.special.url.html"] = { fg = theme.syn.property, underline = true },

    -- ========================================================================
    -- Language-Specific: CSS
    -- ========================================================================
    ["@property.css"] = { fg = theme.syn.property },
    ["@type.css"] = { fg = theme.syn.keyword },
    ["@string.css"] = { fg = theme.syn.string },
    ["@number.css"] = { fg = theme.syn.number },
    ["@function.css"] = { fg = theme.syn.fun },
    ["@keyword.css"] = { fg = theme.syn.keyword },
    ["@punctuation.delimiter.css"] = { fg = theme.syn.punct },
    ["@tag.css"] = { fg = theme.syn.keyword },

    -- ========================================================================
    -- Language-Specific: SCSS/SASS
    -- ========================================================================
    ["@property.scss"] = { fg = theme.syn.property },
    ["@variable.scss"] = { fg = theme.syn.variable },
    ["@variable.sass"] = { fg = theme.syn.variable },
    ["@keyword.scss"] = { fg = theme.syn.keyword },
    ["@keyword.sass"] = { fg = theme.syn.keyword },

    -- ========================================================================
    -- Language-Specific: JSON
    -- ========================================================================
    ["@property.json"] = { fg = theme.syn.property },
    ["@string.json"] = { fg = theme.syn.string },
    ["@number.json"] = { fg = theme.syn.number },
    ["@boolean.json"] = { fg = theme.syn.boolean, bold = true },
    ["@constant.builtin.json"] = { fg = theme.syn.constant, bold = true },

    -- ========================================================================
    -- Language-Specific: YAML
    -- ========================================================================
    ["@property.yaml"] = { fg = theme.syn.property },
    ["@string.yaml"] = { fg = theme.syn.string },
    ["@constant.builtin.yaml"] = { fg = theme.syn.constant, bold = true },
    ["@punctuation.delimiter.yaml"] = { fg = theme.syn.punct },
    ["@punctuation.special.yaml"] = { fg = theme.syn.special1 },

    -- ========================================================================
    -- Language-Specific: TOML
    -- ========================================================================
    ["@property.toml"] = { fg = theme.syn.property },
    ["@type.toml"] = { fg = theme.syn.type, bold = true },
    ["@string.toml"] = { fg = theme.syn.string },

    -- ========================================================================
    -- Language-Specific: Markdown
    -- ========================================================================
    ["@markup.raw.markdown_inline"] = { fg = theme.syn.string },
    ["@markup.link.label.markdown_inline"] = { fg = theme.syn.special1, underline = true },
    ["@text.uri.markdown_inline"] = { fg = theme.syn.property, underline = true },
    ["@punctuation.special.markdown"] = { fg = theme.syn.special1, bold = true },

    -- ========================================================================
    -- Language-Specific: Bash/Shell
    -- ========================================================================
    ["@function.builtin.bash"] = { fg = theme.syn.fun, bold = true },
    ["@variable.builtin.bash"] = { fg = theme.syn.special2, italic = true },
    ["@punctuation.special.bash"] = { fg = theme.syn.special1 },

    -- ========================================================================
    -- Language-Specific: SQL
    -- ========================================================================
    ["@keyword.sql"] = { fg = theme.syn.keyword, bold = true },
    ["@function.builtin.sql"] = { fg = theme.syn.fun, bold = true },
    ["@type.builtin.sql"] = { fg = theme.syn.type, bold = true },

    -- ========================================================================
    -- Language-Specific: Vim
    -- ========================================================================
    ["@variable.vim"] = { fg = theme.syn.variable },
    ["@function.vim"] = { fg = theme.syn.fun },
    ["@keyword.vim"] = { fg = theme.syn.keyword },
    ["@constant.vim"] = { fg = theme.syn.constant },

    -- ========================================================================
    -- Language-Specific: Git
    -- ========================================================================
    ["@text.title.gitcommit"] = { fg = theme.syn.fun, bold = true },
    ["@keyword.gitcommit"] = { fg = theme.syn.keyword },
    ["@constant.builtin.gitcommit"] = { fg = theme.vcs.added },
    ["@text.uri.gitcommit"] = { fg = theme.syn.property, underline = true },

    -- ========================================================================
    -- Language-Specific: Regex
    -- ========================================================================
    ["@string.regexp"] = { fg = theme.syn.regex },
    ["@constant.character.escape.regex"] = { fg = theme.syn.regex, bold = true },
    ["@punctuation.bracket.regex"] = { fg = theme.syn.special1 },

    -- ========================================================================
    -- Diagnostics in Comments
    -- ========================================================================
    ["@text.todo.unchecked"] = { fg = theme.syn.punct },
    ["@text.todo.checked"] = { fg = theme.diag.ok, bold = true },

    -- ========================================================================
    -- Additional Scope Enhancements
    -- ========================================================================
    ["@exception"] = { fg = theme.syn.exception, bold = true },
    ["@include"] = { fg = theme.syn.statement, italic = true },
    ["@storageclass"] = { fg = theme.syn.keyword, bold = true },
    ["@parameter.reference"] = { fg = theme.syn.parameter, italic = true },
    ["@method"] = { fg = theme.syn.method },
    ["@method.call"] = { fg = theme.syn.method },
    ["@field.key"] = { fg = theme.syn.property },
    ["@none"] = {},
    ["@conceal"] = { fg = theme.syn.comment },

    -- ========================================================================
    -- Spell Checking
    -- ========================================================================
    ["@spell"] = {},
    ["@nospell"] = {},
  }
end

return M
