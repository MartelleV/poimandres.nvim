local M = {}

function M.setup(colors, config)
  local theme = colors.theme
  config = config or require("poimandres").config

  return {
    -- ========================================================================
    -- Core Syntax Groups
    -- ========================================================================
    Comment = vim.tbl_extend("force", { fg = theme.syn.comment }, config.commentStyle),
    Constant = { fg = theme.syn.constant },
    String = { fg = theme.syn.string },
    Character = { fg = theme.syn.string },
    Number = { fg = theme.syn.number },
    Boolean = { fg = theme.syn.boolean, bold = true },
    Float = { fg = theme.syn.number },

    Identifier = { fg = theme.syn.identifier },
    Function = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),

    Statement = { fg = theme.syn.statement },
    Conditional = { fg = theme.syn.keyword },
    Repeat = { fg = theme.syn.keyword },
    Label = { fg = theme.syn.special1, bold = true },
    Operator = { fg = theme.syn.operator },
    Keyword = { fg = theme.syn.keyword },
    Exception = { fg = theme.syn.exception, bold = true },

    PreProc = { fg = theme.syn.preproc },
    Include = { fg = theme.syn.statement, bold = true },
    Define = { fg = theme.syn.preproc, bold = true },
    Macro = { fg = theme.syn.preproc, bold = true },
    PreCondit = { fg = theme.syn.preproc },

    Type = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
    StorageClass = { fg = theme.syn.keyword, bold = true },
    Structure = { fg = theme.syn.type },
    Typedef = { fg = theme.syn.type },

    Special = { fg = theme.syn.special1 },
    SpecialChar = { fg = theme.syn.regex, bold = true },
    Tag = { fg = theme.syn.keyword },
    Delimiter = { fg = theme.syn.punct },
    SpecialComment = { fg = theme.syn.special1, italic = true },
    Debug = { fg = theme.diag.warning, bold = true },

    -- ========================================================================
    -- Text Formatting
    -- ========================================================================
    Underlined = { fg = theme.syn.special1, underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { link = "NonText" },
    Error = { fg = theme.diag.error },
    Todo = { fg = theme.ui.fg_reverse, bg = theme.diag.info, bold = true },

    -- ========================================================================
    -- Quickfix
    -- ========================================================================
    qfLineNr = { fg = theme.syn.number },
    qfFileName = { fg = theme.syn.identifier, bold = true },
    qfSeparator = { fg = theme.syn.punct },

    -- ========================================================================
    -- Diff Mode
    -- ========================================================================
    diffAdded = { fg = theme.vcs.added },
    diffRemoved = { fg = theme.vcs.removed },
    diffChanged = { fg = theme.vcs.changed },
    diffOldFile = { fg = theme.vcs.removed },
    diffNewFile = { fg = theme.vcs.added },
    diffFile = { fg = theme.syn.identifier, bold = true },
    diffLine = { fg = theme.syn.special1 },
    diffIndexLine = { fg = theme.syn.comment },

    -- ========================================================================
    -- Markdown
    -- ========================================================================
    markdownCode = { fg = theme.syn.string, bg = theme.ui.bg_p1 },
    markdownCodeBlock = { fg = theme.syn.string, bg = theme.ui.bg_p1 },
    markdownCodeDelimiter = { fg = theme.syn.punct },
    markdownEscape = { fg = "NONE" },
    markdownError = { link = "NONE" },

    -- Headings
    markdownH1 = { fg = theme.syn.fun, bold = true },
    markdownH2 = { fg = theme.syn.special1, bold = true },
    markdownH3 = { fg = theme.syn.identifier, bold = true },
    markdownH4 = { fg = theme.syn.type, bold = true },
    markdownH5 = { fg = theme.syn.keyword, bold = true },
    markdownH6 = { fg = theme.syn.constant, bold = true },
    markdownHeadingDelimiter = { fg = theme.syn.punct, bold = true },
    markdownHeadingRule = { fg = theme.syn.punct },

    -- Links
    markdownLinkText = { fg = theme.syn.special1, underline = true },
    markdownLinkTextDelimiter = { fg = theme.syn.punct },
    markdownLinkDelimiter = { fg = theme.syn.punct },
    markdownUrl = { fg = theme.syn.property, underline = true },
    markdownUrlDelimiter = { fg = theme.syn.punct },
    markdownUrlTitle = { fg = theme.syn.string },
    markdownUrlTitleDelimiter = { fg = theme.syn.punct },

    -- Emphasis
    markdownBold = { bold = true },
    markdownItalic = { italic = true },
    markdownBoldItalic = { bold = true, italic = true },
    markdownStrike = { strikethrough = true },

    -- Lists
    markdownListMarker = { fg = theme.syn.special1, bold = true },
    markdownOrderedListMarker = { fg = theme.syn.special1, bold = true },

    -- Other
    markdownRule = { fg = theme.syn.punct },
    markdownBlockquote = { fg = theme.syn.comment, italic = true },
    markdownId = { fg = theme.syn.identifier },
    markdownIdDeclaration = { fg = theme.syn.type },

    -- ========================================================================
    -- HTML
    -- ========================================================================
    htmlTag = { fg = theme.syn.punct },
    htmlEndTag = { fg = theme.syn.punct },
    htmlTagName = { fg = theme.syn.keyword },
    htmlArg = { fg = theme.syn.identifier },
    htmlSpecialChar = { fg = theme.syn.special1 },
    htmlString = { fg = theme.syn.string },
    htmlBold = { bold = true },
    htmlItalic = { italic = true },
    htmlLink = { fg = theme.syn.special1, underline = true },
    htmlTitle = { fg = theme.syn.fun },
    htmlH1 = { fg = theme.syn.fun, bold = true },
    htmlH2 = { fg = theme.syn.special1, bold = true },
    htmlH3 = { fg = theme.syn.identifier, bold = true },

    -- ========================================================================
    -- XML
    -- ========================================================================
    xmlTag = { fg = theme.syn.punct },
    xmlEndTag = { fg = theme.syn.punct },
    xmlTagName = { fg = theme.syn.keyword },
    xmlAttrib = { fg = theme.syn.identifier },
    xmlString = { fg = theme.syn.string },
    xmlEqual = { fg = theme.syn.operator },
    xmlNamespace = { fg = theme.syn.namespace },

    -- ========================================================================
    -- CSS
    -- ========================================================================
    cssTagName = { fg = theme.syn.keyword },
    cssClassName = { fg = theme.syn.type },
    cssClassNameDot = { fg = theme.syn.punct },
    cssIdentifier = { fg = theme.syn.identifier },
    cssProp = { fg = theme.syn.property },
    cssAttr = { fg = theme.syn.string },
    cssAttrComma = { fg = theme.syn.punct },
    cssBraces = { fg = theme.syn.punct },
    cssFunctionName = { fg = theme.syn.fun },
    cssColor = { fg = theme.syn.number },
    cssImportant = { fg = theme.syn.exception, bold = true },
    cssPseudoClass = { fg = theme.syn.special1 },
    cssPseudoClassId = { fg = theme.syn.special1 },
    cssValueLength = { fg = theme.syn.number },
    cssValueNumber = { fg = theme.syn.number },
    cssUnitDecorators = { fg = theme.syn.special2 },
    cssVendor = { fg = theme.syn.keyword },

    -- ========================================================================
    -- JavaScript / TypeScript
    -- ========================================================================
    javaScriptBraces = { fg = theme.syn.punct },
    javaScriptFunction = { fg = theme.syn.keyword },
    javaScriptIdentifier = { fg = theme.syn.keyword },
    javaScriptNull = { fg = theme.syn.constant, bold = true },
    javaScriptNumber = { fg = theme.syn.number },
    javaScriptRequire = { fg = theme.syn.statement },
    javaScriptReserved = { fg = theme.syn.keyword },

    -- TypeScript
    typescriptReserved = { fg = theme.syn.keyword },
    typescriptLabel = { fg = theme.syn.special1 },
    typescriptFuncKeyword = { fg = theme.syn.keyword },
    typescriptIdentifier = { fg = theme.syn.special2, italic = true },
    typescriptBraces = { fg = theme.syn.punct },
    typescriptEndColons = { fg = theme.syn.punct },
    typescriptDOMObjects = { fg = theme.syn.type },
    typescriptAjaxMethods = { fg = theme.syn.fun },
    typescriptLogicSymbols = { fg = theme.syn.operator },
    typescriptDocSeeTag = { fg = theme.syn.special1 },
    typescriptDocParam = { fg = theme.syn.parameter },
    typescriptDocTags = { fg = theme.syn.keyword },
    typescriptGlobalObjects = { fg = theme.syn.type, bold = true },
    typescriptParens = { fg = theme.syn.punct },
    typescriptOpSymbols = { fg = theme.syn.operator },
    typescriptHtmlElemProperties = { fg = theme.syn.property },
    typescriptNull = { fg = theme.syn.constant, bold = true },
    typescriptInterpolationDelimiter = { fg = theme.syn.special1 },

    -- ========================================================================
    -- JSX / TSX
    -- ========================================================================
    jsxTag = { fg = theme.syn.punct },
    jsxTagName = { fg = theme.syn.keyword },
    jsxCloseString = { fg = theme.syn.punct },
    jsxAttrib = { fg = theme.syn.identifier, italic = true },
    jsxEqual = { fg = theme.syn.operator },
    jsxCloseTag = { fg = theme.syn.punct },
    jsxBraces = { fg = theme.syn.special1 },
    jsxString = { fg = theme.syn.string },
    jsxComponentName = { fg = theme.syn.type },

    -- ========================================================================
    -- JSON
    -- ========================================================================
    jsonKeyword = { fg = theme.syn.property },
    jsonString = { fg = theme.syn.string },
    jsonBoolean = { fg = theme.syn.boolean, bold = true },
    jsonNumber = { fg = theme.syn.number },
    jsonQuote = { fg = theme.syn.punct },
    jsonBraces = { fg = theme.syn.punct },
    jsonNull = { fg = theme.syn.constant, bold = true },

    -- ========================================================================
    -- YAML
    -- ========================================================================
    yamlKey = { fg = theme.syn.property },
    yamlConstant = { fg = theme.syn.constant },
    yamlString = { fg = theme.syn.string },
    yamlBlockMappingKey = { fg = theme.syn.property },
    yamlKeyValueDelimiter = { fg = theme.syn.punct },
    yamlBlockCollectionItemStart = { fg = theme.syn.special1 },
    yamlAnchor = { fg = theme.syn.special2 },
    yamlAlias = { fg = theme.syn.special2 },

    -- ========================================================================
    -- TOML
    -- ========================================================================
    tomlKey = { fg = theme.syn.property },
    tomlTable = { fg = theme.syn.type, bold = true },
    tomlString = { fg = theme.syn.string },
    tomlBoolean = { fg = theme.syn.boolean, bold = true },
    tomlNumber = { fg = theme.syn.number },
    tomlDate = { fg = theme.syn.special1 },

    -- ========================================================================
    -- Python
    -- ========================================================================
    pythonBuiltin = { fg = theme.syn.type, bold = true },
    pythonBuiltinObj = { fg = theme.syn.type },
    pythonBuiltinFunc = { fg = theme.syn.fun, bold = true },
    pythonFunction = { fg = theme.syn.fun },
    pythonDecorator = { fg = theme.syn.special1, italic = true },
    pythonInclude = { fg = theme.syn.statement },
    pythonImport = { fg = theme.syn.statement },
    pythonRun = { fg = theme.syn.statement },
    pythonCoding = { fg = theme.syn.comment },
    pythonOperator = { fg = theme.syn.keyword },
    pythonException = { fg = theme.syn.exception, bold = true },
    pythonExceptions = { fg = theme.syn.exception },
    pythonBoolean = { fg = theme.syn.boolean, bold = true },
    pythonDot = { fg = theme.syn.punct },
    pythonConditional = { fg = theme.syn.keyword },
    pythonRepeat = { fg = theme.syn.keyword },
    pythonDottedName = { fg = theme.syn.identifier },

    -- ========================================================================
    -- Rust
    -- ========================================================================
    rustAttribute = { fg = theme.syn.special1 },
    rustDerive = { fg = theme.syn.special1, italic = true },
    rustMacro = { fg = theme.syn.preproc, bold = true },
    rustModPath = { fg = theme.syn.namespace },
    rustSelf = { fg = theme.syn.special2, italic = true, bold = true },
    rustStorage = { fg = theme.syn.keyword },
    rustStructure = { fg = theme.syn.keyword },
    rustType = { fg = theme.syn.type },
    rustTrait = { fg = theme.syn.type, italic = true },
    rustLifetime = { fg = theme.syn.special1, italic = true },
    rustEnumVariant = { fg = theme.syn.constant },
    rustCommentLineDoc = { fg = theme.syn.comment, italic = true },

    -- ========================================================================
    -- Go
    -- ========================================================================
    goPackage = { fg = theme.syn.statement },
    goImport = { fg = theme.syn.statement },
    goBuiltins = { fg = theme.syn.fun, bold = true },
    goType = { fg = theme.syn.type },
    goTypeName = { fg = theme.syn.type },
    goFunction = { fg = theme.syn.fun },
    goMethod = { fg = theme.syn.method },
    goStruct = { fg = theme.syn.type },
    goStructDef = { fg = theme.syn.type },
    goConditional = { fg = theme.syn.keyword },
    goRepeat = { fg = theme.syn.keyword },
    goLabel = { fg = theme.syn.special1 },
    goConstants = { fg = theme.syn.constant, bold = true },
    goDeclaration = { fg = theme.syn.keyword },
    goDeclType = { fg = theme.syn.keyword },
    goSignedInts = { fg = theme.syn.type },
    goUnsignedInts = { fg = theme.syn.type },
    goFloats = { fg = theme.syn.type },

    -- ========================================================================
    -- C/C++
    -- ========================================================================
    cInclude = { fg = theme.syn.statement, bold = true },
    cDefine = { fg = theme.syn.preproc, bold = true },
    cPreCondit = { fg = theme.syn.preproc },
    cType = { fg = theme.syn.type },
    cStructure = { fg = theme.syn.keyword },
    cStorageClass = { fg = theme.syn.keyword, bold = true },
    cConstant = { fg = theme.syn.constant },
    cppStructure = { fg = theme.syn.keyword },
    cppModifier = { fg = theme.syn.keyword },
    cppType = { fg = theme.syn.type },
    cppStorageClass = { fg = theme.syn.keyword, bold = true },
    cppAccess = { fg = theme.syn.keyword },
    cppStatement = { fg = theme.syn.statement },
    cppCast = { fg = theme.syn.keyword },
    cppExceptions = { fg = theme.syn.exception },

    -- ========================================================================
    -- C#
    -- ========================================================================
    csType = { fg = theme.syn.type },
    csClass = { fg = theme.syn.type },
    csModifier = { fg = theme.syn.keyword },
    csStorage = { fg = theme.syn.keyword },
    csRepeat = { fg = theme.syn.keyword },
    csConditional = { fg = theme.syn.keyword },
    csLabel = { fg = theme.syn.special1 },
    csException = { fg = theme.syn.exception },
    csUnspecifiedStatement = { fg = theme.syn.statement },
    csNew = { fg = theme.syn.keyword, bold = true },
    csNewType = { fg = theme.syn.type },
    csAttribute = { fg = theme.syn.special1 },

    -- ========================================================================
    -- Java
    -- ========================================================================
    javaType = { fg = theme.syn.type },
    javaStorageClass = { fg = theme.syn.keyword },
    javaClassDecl = { fg = theme.syn.keyword },
    javaAnnotation = { fg = theme.syn.special1 },
    javaExternal = { fg = theme.syn.statement },
    javaConstant = { fg = theme.syn.constant, bold = true },
    javaBoolean = { fg = theme.syn.boolean, bold = true },
    javaMethodDecl = { fg = theme.syn.fun },
    javaOperator = { fg = theme.syn.operator },
    javaException = { fg = theme.syn.exception },
    javaScopeDecl = { fg = theme.syn.keyword },

    -- ========================================================================
    -- Kotlin
    -- ========================================================================
    kotlinStatement = { fg = theme.syn.statement },
    kotlinKeyword = { fg = theme.syn.keyword },
    kotlinType = { fg = theme.syn.type },
    kotlinModifier = { fg = theme.syn.keyword },
    kotlinAnnotation = { fg = theme.syn.special1 },
    kotlinBoolean = { fg = theme.syn.boolean, bold = true },

    -- ========================================================================
    -- Elixir
    -- ========================================================================
    elixirModuleDefine = { fg = theme.syn.keyword, bold = true },
    elixirAlias = { fg = theme.syn.type },
    elixirAtom = { fg = theme.syn.constant },
    elixirBlockDefinition = { fg = theme.syn.keyword },
    elixirModuleDeclaration = { fg = theme.syn.namespace },
    elixirInclude = { fg = theme.syn.statement },
    elixirOperator = { fg = theme.syn.operator },
    elixirBoolean = { fg = theme.syn.boolean, bold = true },
    elixirVariable = { fg = theme.syn.variable },
    elixirSelf = { fg = theme.syn.special2, italic = true },
    elixirStringDelimiter = { fg = theme.syn.string },
    elixirRegexDelimiter = { fg = theme.syn.regex },
    elixirInterpolationDelimiter = { fg = theme.syn.special1 },
    elixirDocString = { fg = theme.syn.comment, italic = true },
    elixirDocTest = { fg = theme.syn.special1, bold = true },

    -- ========================================================================
    -- Lua
    -- ========================================================================
    luaFunc = { fg = theme.syn.fun },
    luaFunction = { fg = theme.syn.keyword },
    luaTable = { fg = theme.syn.punct },
    luaIn = { fg = theme.syn.keyword },
    luaConstant = { fg = theme.syn.constant, bold = true },
    luaComment = { fg = theme.syn.comment },
    luaCond = { fg = theme.syn.keyword },
    luaRepeat = { fg = theme.syn.keyword },
    luaStatement = { fg = theme.syn.statement },

    -- ========================================================================
    -- Zig
    -- ========================================================================
    zigVarDecl = { fg = theme.syn.keyword },
    zigType = { fg = theme.syn.type },
    zigBuiltin = { fg = theme.syn.fun, bold = true },
    zigStatement = { fg = theme.syn.statement },
    zigConditional = { fg = theme.syn.keyword },
    zigRepeat = { fg = theme.syn.keyword },
    zigConstant = { fg = theme.syn.constant },
    zigKeyword = { fg = theme.syn.keyword },

    -- ========================================================================
    -- SQL
    -- ========================================================================
    sqlKeyword = { fg = theme.syn.keyword },
    sqlFunction = { fg = theme.syn.fun },
    sqlOperator = { fg = theme.syn.operator },
    sqlStatement = { fg = theme.syn.statement, bold = true },
    sqlString = { fg = theme.syn.string },
    sqlType = { fg = theme.syn.type },

    -- ========================================================================
    -- Shell
    -- ========================================================================
    shFunction = { fg = theme.syn.fun },
    shStatement = { fg = theme.syn.statement },
    shDeref = { fg = theme.syn.special2 },
    shVariable = { fg = theme.syn.variable },
    shOperator = { fg = theme.syn.operator },
    shQuote = { fg = theme.syn.string },
    shOption = { fg = theme.syn.constant },
    shDerefSimple = { fg = theme.syn.special2 },

    -- ========================================================================
    -- Vim Script
    -- ========================================================================
    vimCommand = { fg = theme.syn.statement },
    vimLet = { fg = theme.syn.keyword },
    vimFunction = { fg = theme.syn.fun },
    vimIsCommand = { fg = theme.syn.statement },
    vimUserFunc = { fg = theme.syn.fun },
    vimFuncName = { fg = theme.syn.fun },
    vimVar = { fg = theme.syn.variable },
    vimOption = { fg = theme.syn.constant },
    vimNotation = { fg = theme.syn.special1 },
    vimBracket = { fg = theme.syn.punct },
    vimParenSep = { fg = theme.syn.punct },
    vimMapModKey = { fg = theme.syn.special1 },
    vimAutoCmdSfxList = { fg = theme.syn.type },
    vimAutoEventList = { fg = theme.syn.type },

    -- ========================================================================
    -- Git
    -- ========================================================================
    gitcommitSummary = { fg = theme.syn.fun, bold = true },
    gitcommitComment = { fg = theme.syn.comment, italic = true },
    gitcommitUntracked = { fg = theme.syn.comment },
    gitcommitDiscarded = { fg = theme.syn.comment },
    gitcommitSelected = { fg = theme.syn.comment },
    gitcommitUnmerged = { fg = theme.diag.warning },
    gitcommitOnBranch = { fg = theme.syn.comment },
    gitcommitBranch = { fg = theme.syn.special1, bold = true },
    gitcommitDiscardedType = { fg = theme.vcs.removed },
    gitcommitSelectedType = { fg = theme.vcs.added },
    gitcommitHeader = { fg = theme.syn.comment },
    gitcommitUntrackedFile = { fg = theme.vcs.added },
    gitcommitDiscardedFile = { fg = theme.vcs.removed },
    gitcommitSelectedFile = { fg = theme.vcs.changed },
    gitcommitUnmergedFile = { fg = theme.diag.warning },
    gitcommitFile = { fg = theme.syn.identifier },
    gitcommitOverflow = { fg = theme.diag.error },
  }
end

return M
