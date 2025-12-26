vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.g.colors_name = "deboru"

local base_colors = {
	void         = "#000000",
	--
	white        = "#FFFFFF",
	gray         = "#777777",
	gray_dark    = "#333333",
	black        = "#111111",
	--
	red          = "#F03030",
	rose         = "#F07070",
	green        = "#40B080",
	yellow       = "#FFD700",
	blue         = "#70A0D0",
}

local warn_colors = {
	red    = "#FF0000",
	blue   = "#0000FF",
	yellow = "#00FFFF",
	green  = "#00FF00",
}

local clr = {
	void        = base_colors.void,
	--
	main        = base_colors.white,
	main_sec    = base_colors.gray,
	main_ter    = base_colors.gray_dark,
	main_qua    = base_colors.black,
	--
	accent      = base_colors.red,
	comment     = base_colors.gray,
	string      = base_colors.green,
	attention   = base_colors.yellow,
	type        = base_colors.rose,
	logical     = base_colors.blue,
}

local hl = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- ╭─────────────────────────────╮
-- │ Core UI groups              │
-- ╰─────────────────────────────╯
hl("Normal",       { fg = clr.main,      bg = clr.void      })
hl("NormalNC",     { fg = clr.main,      bg = clr.void      })
hl("SignColumn",   { bg = clr.void                          })
hl("LineNr",       { fg = clr.main_sec                      })
hl("CursorLineNr", { fg = clr.main                          })
hl("CursorLine",   { bg = clr.main_ter                      })
hl("VertSplit",    { fg = clr.main                          })
hl("StatusLine",   { fg = clr.main,      bg = clr.main_ter  })
hl("StatusLineNC", { fg = clr.main,      bg = clr.main_qua  })
hl("Pmenu",        { fg = clr.main,      bg = clr.main_ter  })
hl("PmenuSel",     { fg = clr.main,      bg = clr.main_sec  })
hl("NormalFloat",  { fg = clr.main,      bg = clr.main_ter  })
hl("Search",       { fg = clr.void,      bg = clr.attention })
hl("Visual",       {                     bg = clr.main_ter  })
hl("MatchParen",   { fg = clr.attention, bg = clr.main_ter  })
hl("Title",        { fg = clr.main                          })
hl("ColorColumn",  { bg = clr.void                          })
hl("Directory",    { fg = clr.main                          })


-- ╭─────────────────────────────╮
-- │ Syntax groups               │
-- ╰─────────────────────────────╯
hl("Comment",      { fg = clr.comment     })
hl("Constant",     { fg = clr.main        })
hl("String",       { fg = clr.string      })
hl("Character",    { fg = clr.main        })
hl("Number",       { fg = clr.main        })
hl("Boolean",      { fg = clr.main        })
hl("Identifier",   { fg = clr.main        })
hl("Function",     { fg = clr.main        })
hl("Statement",    { fg = clr.accent })
hl("Conditional",  { fg = clr.logical     })
hl("Repeat",       { fg = clr.logical     })
hl("Label",        { fg = clr.logical     })
hl("Operator",     { fg = clr.main        })
hl("Keyword",      { fg = clr.accent })
hl("PreProc",      { fg = clr.accent })
hl("Include",      { fg = clr.accent })
hl("Define",       { fg = clr.accent })
hl("Macro",        { fg = clr.accent })
hl("Type",         { fg = clr.type        })
hl("StorageClass", { fg = clr.main        })
hl("Structure",    { fg = clr.accent })
hl("Typedef",      { fg = clr.accent })
hl("Special",      { fg = clr.accent })
hl("Delimiter",    { fg = clr.main        })
hl("Error",        { fg = warn_colors.red })
hl("Todo",         { fg = clr.attention   })

-- -- ╭─────────────────────────────╮
-- -- │ Treesitter groups           │
-- -- ╰─────────────────────────────╯
-- hl("@comment",          { link = "Comment"     })
-- hl("@string",           { link = "String"      })
-- hl("@number",           { link = "Number"      })
-- hl("@boolean",          { link = "Boolean"     })
-- hl("@constant",         { link = "Constant"    })
-- hl("@function",         { fg = clr.main        })
-- hl("@function.call",    { fg = clr.main        })
-- hl("@keyword",          { fg = clr.less_accent })
-- hl("@type",             { fg = clr.type        })
-- hl("@variable",         { fg = clr.accent      })
-- hl("@variable.builtin", { fg = clr.accent      })
-- hl("@parameter",        { fg = clr.main        })
-- hl("@field",            { fg = clr.main        })
-- hl("@property",         { fg = clr.main        })

-- ╭─────────────────────────────╮
-- │ LSP Diagnostics             │
-- ╰─────────────────────────────╯
hl("DiagnosticError", { fg = warn_colors.red    })
hl("DiagnosticWarn",  { fg = warn_colors.yellow })
hl("DiagnosticInfo",  { fg = warn_colors.blue   })
hl("DiagnosticHint",  { fg = warn_colors.green  })

hl("DiagnosticUnderlineError", { undercurl = true, sp = warn_colors.red    })
hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = warn_colors.yellow })
hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = warn_colors.blue   })
hl("DiagnosticUnderlineHint",  { undercurl = true, sp = warn_colors.green  })

-- ╭─────────────────────────────╮
-- │ Diff / Git / Plugins        │
-- ╰─────────────────────────────╯
hl("DiffAdd",    { fg = base_colors.green       })
hl("DiffChange", { fg = base_colors.blue        })
hl("DiffDelete", { fg = base_colors.red })
hl("DiffText",   { fg = base_colors.white       })

hl("GitSignsAdd",    { fg = base_colors.green       })
hl("GitSignsChange", { fg = base_colors.blue        })
hl("GitSignsDelete", { fg = base_colors.red })

hl("TelescopeBorder", { fg = base_colors.white                })
hl("TelescopePrompt", { fg = base_colors.white, bg = clr.void })

-- ╭─────────────────────────────╮
-- │ LICENSE                     │
-- ╰─────────────────────────────╯
--
-- BRSKv3 License
--
-- You are allowed to use, modify, and share this code as long as your intentions
-- are good. This permission does not apply to harmful, dishonest, exploitative,
-- or malicious use of any kind.
--
-- In addition, by using, modifying, or sharing this code, you agree to read and
-- think about living according to the "Instruments of Good Works" found in
-- Chapter 4 of The Rule of St. Benedict. You do not have to follow them, but you
-- are asked to take them seriously and consider their guidance.

