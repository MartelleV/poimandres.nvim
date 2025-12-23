local M = {}

function M.setup(colors, config)
  config = config or require("poimandres").config
  local theme = colors.theme

  return {
    -- ========================================================================
    -- Core Types
    -- ========================================================================
    ["@lsp.type.class"] = { fg = theme.syn.type },
    ["@lsp.type.decorator"] = { fg = theme.syn.special1, italic = true },
    ["@lsp.type.enum"] = { fg = theme.syn.type, bold = true },
    ["@lsp.type.enumMember"] = { fg = theme.syn.constant },
    ["@lsp.type.function"] = { fg = theme.syn.fun },
    ["@lsp.type.interface"] = { fg = theme.syn.type, italic = true },
    ["@lsp.type.macro"] = { fg = theme.syn.preproc, bold = true },
    ["@lsp.type.method"] = { fg = theme.syn.method },
    ["@lsp.type.namespace"] = { fg = theme.syn.namespace },
    ["@lsp.type.parameter"] = { fg = theme.syn.parameter },
    ["@lsp.type.property"] = { fg = theme.syn.property },
    ["@lsp.type.struct"] = { fg = theme.syn.type },
    ["@lsp.type.type"] = { fg = theme.syn.type },
    ["@lsp.type.typeParameter"] = { fg = theme.syn.type, italic = true },
    ["@lsp.type.variable"] = { fg = theme.syn.variable },

    -- ========================================================================
    -- Additional Types
    -- ========================================================================
    ["@lsp.type.annotation"] = { fg = theme.syn.special1 },
    ["@lsp.type.attribute"] = { fg = theme.syn.special2 },
    ["@lsp.type.builtinAttribute"] = { fg = theme.syn.special2, bold = true },
    ["@lsp.type.comment"] = { link = "Comment" },
    ["@lsp.type.const"] = { fg = theme.syn.constant },
    ["@lsp.type.keyword"] = { fg = theme.syn.keyword },
    ["@lsp.type.lifetime"] = { fg = theme.syn.special1, italic = true },
    ["@lsp.type.operator"] = { fg = theme.syn.operator },
    ["@lsp.type.regexp"] = { fg = theme.syn.regex },
    ["@lsp.type.string"] = { link = "String" },
    ["@lsp.type.number"] = { link = "Number" },
    ["@lsp.type.boolean"] = { fg = theme.syn.boolean, bold = true },

    -- ========================================================================
    -- Punctuation & Delimiters
    -- ========================================================================
    ["@lsp.type.punctuation"] = { fg = theme.syn.punct },
    ["@lsp.type.bracket"] = { fg = theme.syn.punct },
    ["@lsp.type.delimiter"] = { fg = theme.syn.punct },
    ["@lsp.type.comparison"] = { fg = theme.syn.operator },
    ["@lsp.type.bitwise"] = { fg = theme.syn.operator },
    ["@lsp.type.logical"] = { fg = theme.syn.operator },

    -- ========================================================================
    -- Special Identifiers
    -- ========================================================================
    ["@lsp.type.selfParameter"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@lsp.type.selfKeyword"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@lsp.type.builtinConstant"] = { fg = theme.syn.constant, italic = true, bold = true },
    ["@lsp.type.builtinType"] = { fg = theme.syn.type, italic = true },
    ["@lsp.type.magicFunction"] = { fg = theme.syn.special1, bold = true },

    -- ========================================================================
    -- String & Format Specifiers
    -- ========================================================================
    ["@lsp.type.escapeSequence"] = { fg = theme.syn.regex, bold = true },
    ["@lsp.type.formatSpecifier"] = { fg = theme.syn.special1, bold = true },
    ["@lsp.type.characterLiteral"] = { link = "Character" },

    -- ========================================================================
    -- Documentation
    -- ========================================================================
    ["@lsp.type.keyword.documentation"] = { fg = theme.syn.special1, italic = true },
    ["@lsp.type.comment.documentation"] = { fg = theme.syn.comment, italic = true },

    -- ========================================================================
    -- Generic & Template Types
    -- ========================================================================
    ["@lsp.type.generic"] = { fg = theme.syn.type, italic = true },
    ["@lsp.type.typeAlias"] = { fg = theme.syn.type },

    -- ========================================================================
    -- Core Modifiers
    -- ========================================================================
    ["@lsp.mod.abstract"] = { italic = true },
    ["@lsp.mod.deprecated"] = { fg = theme.syn.deprecated, strikethrough = true },
    ["@lsp.mod.readonly"] = { fg = theme.syn.readonlyTeal, italic = true },
    ["@lsp.mod.static"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.mod.constant"] = { fg = theme.syn.constant },
    ["@lsp.mod.defaultLibrary"] = { bold = true },
    ["@lsp.mod.declaration"] = {},
    ["@lsp.mod.definition"] = {},
    ["@lsp.mod.async"] = { italic = true },
    ["@lsp.mod.modification"] = {},
    ["@lsp.mod.documentation"] = { italic = true },
    ["@lsp.mod.public"] = {},
    ["@lsp.mod.private"] = {},
    ["@lsp.mod.protected"] = {},
    ["@lsp.mod.callable"] = {},
    ["@lsp.mod.mutable"] = {},
    ["@lsp.mod.consuming"] = { italic = true },
    ["@lsp.mod.unsafe"] = { fg = theme.diag.warning, bold = true },
    ["@lsp.mod.crateRoot"] = { bold = true },
    ["@lsp.mod.local"] = {},
    ["@lsp.mod.global"] = { bold = true },
    ["@lsp.mod.typeHint"] = { fg = theme.syn.type, italic = true },
    ["@lsp.mod.controlFlow"] = { bold = true },

    -- ========================================================================
    -- Type + Modifier Combinations - Classes & Structs
    -- ========================================================================
    ["@lsp.typemod.class.defaultLibrary"] = { fg = theme.syn.type, bold = true },
    ["@lsp.typemod.class.declaration"] = { fg = theme.syn.type },
    ["@lsp.typemod.class.public"] = { fg = theme.syn.type },
    ["@lsp.typemod.struct.defaultLibrary"] = { fg = theme.syn.type, bold = true },
    ["@lsp.typemod.struct.declaration"] = { fg = theme.syn.type },

    -- ========================================================================
    -- Type + Modifier - Enums
    -- ========================================================================
    ["@lsp.typemod.enum.defaultLibrary"] = { fg = theme.syn.type, bold = true },
    ["@lsp.typemod.enum.declaration"] = { fg = theme.syn.type, bold = true },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = theme.syn.constant, bold = true },
    ["@lsp.typemod.enumMember.declaration"] = { fg = theme.syn.constant },
    ["@lsp.typemod.enumMember.readonly"] = { fg = theme.syn.constant, italic = true },

    -- ========================================================================
    -- Type + Modifier - Functions
    -- ========================================================================
    ["@lsp.typemod.function.defaultLibrary"] = { fg = theme.syn.fun, bold = true },
    ["@lsp.typemod.function.builtin"] = { fg = theme.syn.fun, bold = true },
    ["@lsp.typemod.function.declaration"] = { fg = theme.syn.fun },
    ["@lsp.typemod.function.readonly"] = { fg = theme.syn.fun, bold = true, italic = true },
    ["@lsp.typemod.function.static"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.typemod.function.async"] = { fg = theme.syn.fun, italic = true },
    ["@lsp.typemod.function.public"] = { fg = theme.syn.fun },
    ["@lsp.typemod.function.private"] = { fg = theme.syn.fun },
    ["@lsp.typemod.function.protected"] = { fg = theme.syn.fun },

    -- ========================================================================
    -- Type + Modifier - Methods
    -- ========================================================================
    ["@lsp.typemod.method.defaultLibrary"] = { fg = theme.syn.method, bold = true },
    ["@lsp.typemod.method.declaration"] = { fg = theme.syn.method },
    ["@lsp.typemod.method.static"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.typemod.method.async"] = { fg = theme.syn.method, italic = true },
    ["@lsp.typemod.method.public"] = { fg = theme.syn.method },
    ["@lsp.typemod.method.private"] = { fg = theme.syn.method },
    ["@lsp.typemod.method.protected"] = { fg = theme.syn.method },
    ["@lsp.typemod.method.readonly"] = { fg = theme.syn.readonlyTeal, bold = true },
    ["@lsp.typemod.method.abstract"] = { fg = theme.syn.method, italic = true },

    -- ========================================================================
    -- Type + Modifier - Variables
    -- ========================================================================
    ["@lsp.typemod.variable.callable"] = { fg = theme.syn.fun },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = theme.syn.special2, bold = true },
    ["@lsp.typemod.variable.global"] = { fg = theme.syn.constant, bold = true },
    ["@lsp.typemod.variable.static"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.typemod.variable.readonly"] = { fg = theme.syn.readonlyTeal, italic = true },
    ["@lsp.typemod.variable.constant"] = { fg = theme.syn.constant },
    ["@lsp.typemod.variable.declaration"] = { fg = theme.syn.variable },
    ["@lsp.typemod.variable.local"] = { fg = theme.syn.variable },
    ["@lsp.typemod.variable.mutable"] = { fg = theme.syn.variable },

    -- ========================================================================
    -- Type + Modifier - Properties & Fields
    -- ========================================================================
    ["@lsp.typemod.property.declaration"] = { fg = theme.syn.property },
    ["@lsp.typemod.property.readonly"] = { fg = theme.syn.readonlyTeal, italic = true },
    ["@lsp.typemod.property.static"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.typemod.property.defaultLibrary"] = { fg = theme.syn.property, bold = true },

    -- ========================================================================
    -- Type + Modifier - Parameters
    -- ========================================================================
    ["@lsp.typemod.parameter.declaration"] = { fg = theme.syn.parameter },
    ["@lsp.typemod.parameter.readonly"] = { fg = theme.syn.parameter, italic = true },

    -- ========================================================================
    -- Type + Modifier - Keywords
    -- ========================================================================
    ["@lsp.typemod.keyword.async"] = { fg = theme.syn.keyword, italic = true },
    ["@lsp.typemod.keyword.unsafe"] = { fg = theme.diag.warning, bold = true },
    ["@lsp.typemod.keyword.controlFlow"] = { fg = theme.syn.statement, bold = true },
    ["@lsp.typemod.keyword.injected"] = { fg = theme.syn.keyword },

    -- ========================================================================
    -- Type + Modifier - Operators
    -- ========================================================================
    ["@lsp.typemod.operator.injected"] = { fg = theme.syn.operator },
    ["@lsp.typemod.operator.controlFlow"] = { fg = theme.syn.statement, bold = true },
    ["@lsp.typemod.operator.unsafe"] = { fg = theme.diag.warning, bold = true },

    -- ========================================================================
    -- Type + Modifier - Macros
    -- ========================================================================
    ["@lsp.typemod.macro.defaultLibrary"] = { fg = theme.syn.preproc, bold = true },
    ["@lsp.typemod.macro.declaration"] = { fg = theme.syn.preproc },

    -- ========================================================================
    -- Type + Modifier - Strings
    -- ========================================================================
    ["@lsp.typemod.string.injected"] = { link = "String" },

    -- ========================================================================
    -- Type + Modifier - Types & Aliases
    -- ========================================================================
    ["@lsp.typemod.type.defaultLibrary"] = { fg = theme.syn.type, bold = true },
    ["@lsp.typemod.type.declaration"] = { fg = theme.syn.type },
    ["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = theme.syn.type, bold = true },
    ["@lsp.typemod.typeAlias.declaration"] = { fg = theme.syn.type },
    ["@lsp.typemod.typeParameter.declaration"] = { fg = theme.syn.type, italic = true },

    -- ========================================================================
    -- Type + Modifier - Namespaces
    -- ========================================================================
    ["@lsp.typemod.namespace.declaration"] = { fg = theme.syn.namespace },
    ["@lsp.typemod.namespace.defaultLibrary"] = { fg = theme.syn.namespace, bold = true },

    -- ========================================================================
    -- Injected Content
    -- ========================================================================
    ["@lsp.typemod.variable.injected"] = { fg = theme.syn.variable },
    ["@lsp.typemod.operator.injected"] = { fg = theme.syn.operator },
    ["@lsp.typemod.keyword.injected"] = { fg = theme.syn.keyword },

    -- ========================================================================
    -- Language-Specific: Rust
    -- ========================================================================
    ["@lsp.type.decorator.rust"] = { fg = theme.syn.special1, bold = true },
    ["@lsp.type.deriveHelper.rust"] = { fg = theme.syn.special1, italic = true },
    ["@lsp.type.builtinAttribute.rust"] = { fg = theme.syn.special2, bold = true },
    ["@lsp.type.lifetime.rust"] = { fg = theme.syn.special1, italic = true },
    ["@lsp.type.generic.rust"] = { fg = theme.syn.type, italic = true },
    ["@lsp.type.unresolvedReference.rust"] = { undercurl = true, sp = theme.diag.error },
    ["@lsp.typemod.function.crateRoot.rust"] = { fg = theme.syn.fun, bold = true },
    ["@lsp.typemod.method.trait.rust"] = { fg = theme.syn.method, italic = true },
    ["@lsp.typemod.selfKeyword.mutable.rust"] = { fg = theme.syn.special2, bold = true, italic = true },

    -- ========================================================================
    -- Language-Specific: Java
    -- ========================================================================
    ["@lsp.mod.readonly.java"] = { fg = theme.syn.readonlyTeal, italic = true },
    ["@lsp.mod.static.java"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.typemod.method.static.java"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.typemod.variable.static.java"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.type.annotation.java"] = { fg = theme.syn.special1 },

    -- ========================================================================
    -- Language-Specific: C#
    -- ========================================================================
    ["@lsp.type.property.cs"] = { fg = theme.syn.property },
    ["@lsp.type.event.cs"] = { fg = theme.syn.special1 },
    ["@lsp.typemod.property.static.cs"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.typemod.method.static.cs"] = { fg = theme.syn.staticGold, bold = true },

    -- ========================================================================
    -- Language-Specific: TypeScript/JavaScript
    -- ========================================================================
    ["@lsp.type.property.typescript"] = { fg = theme.syn.property },
    ["@lsp.type.property.javascript"] = { fg = theme.syn.property },
    ["@lsp.typemod.variable.readonly.typescript"] = { fg = theme.syn.readonlyTeal, italic = true },
    ["@lsp.typemod.variable.readonly.javascript"] = { fg = theme.syn.readonlyTeal, italic = true },
    ["@lsp.typemod.property.readonly.typescript"] = { fg = theme.syn.readonlyTeal, italic = true },
    ["@lsp.typemod.property.readonly.javascript"] = { fg = theme.syn.readonlyTeal, italic = true },
    ["@lsp.typemod.function.async.typescript"] = { fg = theme.syn.fun, italic = true },
    ["@lsp.typemod.function.async.javascript"] = { fg = theme.syn.fun, italic = true },

    -- ========================================================================
    -- Language-Specific: Go
    -- ========================================================================
    ["@lsp.type.namespace.go"] = { fg = theme.syn.namespace },
    ["@lsp.typemod.variable.readonly.go"] = { fg = theme.syn.constant },

    -- ========================================================================
    -- Language-Specific: C/C++
    -- ========================================================================
    ["@lsp.type.macro.c"] = { fg = theme.syn.preproc, bold = true },
    ["@lsp.type.macro.cpp"] = { fg = theme.syn.preproc, bold = true },
    ["@lsp.typemod.variable.static.c"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.typemod.variable.static.cpp"] = { fg = theme.syn.staticGold, bold = true },
    ["@lsp.typemod.function.static.cpp"] = { fg = theme.syn.staticGold, bold = true },

    -- ========================================================================
    -- Language-Specific: Zig
    -- ========================================================================
    ["@lsp.type.variable.zig"] = {}, -- Don't override Treesitter
    ["@lsp.type.namespace.zig"] = { fg = theme.syn.namespace },

    -- ========================================================================
    -- Language-Specific: Python
    -- ========================================================================
    ["@lsp.type.decorator.python"] = { fg = theme.syn.special1, italic = true },
    ["@lsp.type.selfParameter.python"] = { fg = theme.syn.special2, italic = true, bold = true },
    ["@lsp.typemod.function.async.python"] = { fg = theme.syn.fun, italic = true },

    -- ========================================================================
    -- Language-Specific: Kotlin
    -- ========================================================================
    ["@lsp.type.annotation.kotlin"] = { fg = theme.syn.special1 },
    ["@lsp.typemod.variable.readonly.kotlin"] = { fg = theme.syn.readonlyTeal, italic = true },

    -- ========================================================================
    -- Language-Specific: Elixir
    -- ========================================================================
    ["@lsp.type.attribute.elixir"] = { fg = theme.syn.special1 },
    ["@lsp.type.macro.elixir"] = { fg = theme.syn.preproc, bold = true },
  }
end

return M
