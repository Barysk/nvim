-- Deboru is my neovim colorscheme, and appeared after Poporu my nvim config.
-- You can use it if you consider following the rules provided below.
-- this theme is high in contrast, and doesn't overheighlights your code.

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
	red_intence  = "#F03030",
	red          = "#F07070",
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
	less_accent = base_colors.red_intence,
	accent      = base_colors.blue,
	comment     = base_colors.gray,
	string      = base_colors.green,
	attention   = base_colors.yellow,
	type        = base_colors.red,
	logical     = base_colors.green,
}

local hl = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- ╭─────────────────────────────╮
-- │ Core UI groups              │
-- ╰─────────────────────────────╯
hl("Normal",       { fg = clr.main, bg = clr.void      })
hl("NormalNC",     { fg = clr.main, bg = clr.void      })
hl("SignColumn",   { bg = clr.void                     })
hl("LineNr",       { fg = clr.main_sec                 })
hl("CursorLineNr", { fg = clr.main                     })
hl("CursorLine",   { bg = clr.main_ter                 })
hl("VertSplit",    { fg = clr.main                     })
hl("StatusLine",   { fg = clr.main, bg = clr.main_ter  })
hl("StatusLineNC", { fg = clr.main, bg = clr.main_qua  })
hl("Pmenu",        { fg = clr.main, bg = clr.main_ter  })
hl("PmenuSel",     { fg = clr.main, bg = clr.main_sec  })
hl("NormalFloat",  { fg = clr.main, bg = clr.main_ter  })
hl("Search",       { fg = clr.void, bg = clr.attention })
hl("Visual",       { fg = clr.main, bg = clr.main_sec  })
hl("MatchParen",   { fg = clr.void, bg = clr.main_sec  })
hl("Title",        { fg = clr.main                     })
hl("ColorColumn",  { bg = clr.void                     })
hl("Directory",    { fg = clr.main                     })


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
hl("Function",     { fg = clr.less_accent })
hl("Statement",    { fg = clr.less_accent })
hl("Conditional",  { fg = clr.logical     })
hl("Repeat",       { fg = clr.logical     })
hl("Label",        { fg = clr.logical     })
hl("Operator",     { fg = clr.main        })
hl("Keyword",      { fg = clr.less_accent })
hl("PreProc",      { fg = clr.less_accent })
hl("Include",      { fg = clr.less_accent })
hl("Define",       { fg = clr.less_accent })
hl("Macro",        { fg = clr.less_accent })
hl("Type",         { fg = clr.type        })
hl("StorageClass", { fg = clr.main        })
hl("Structure",    { fg = clr.less_accent })
hl("Typedef",      { fg = clr.less_accent })
hl("Special",      { fg = clr.less_accent })
hl("Delimiter",    { fg = clr.main        })
hl("Error",        { fg = warn_colors.red })
hl("Todo",         { fg = clr.attention   })

-- ╭─────────────────────────────╮
-- │ Treesitter groups           │
-- ╰─────────────────────────────╯
hl("@comment",          { link = "Comment"     })
hl("@string",           { link = "String"      })
hl("@number",           { link = "Number"      })
hl("@boolean",          { link = "Boolean"     })
hl("@constant",         { link = "Constant"    })
hl("@function",         { fg = clr.less_accent })
hl("@function.call",    { fg = clr.less_accent })
hl("@keyword",          { fg = clr.less_accent })
hl("@type",             { fg = clr.type        })
hl("@variable",         { fg = clr.accent      })
hl("@variable.builtin", { fg = clr.accent      })
hl("@parameter",        { fg = clr.main        })
hl("@field",            { fg = clr.main        })
hl("@property",         { fg = clr.main        })

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
hl("DiffAdd",    { fg = clr.string      })
hl("DiffChange", { fg = clr.accent      })
hl("DiffDelete", { fg = clr.less_accent })
hl("DiffText",   { fg = clr.main        })

hl("GitSignsAdd",    { fg = clr.string      })
hl("GitSignsChange", { fg = clr.accent      })
hl("GitSignsDelete", { fg = clr.less_accent })

hl("TelescopeBorder", { fg = clr.main                })
hl("TelescopePrompt", { fg = clr.main, bg = clr.void })

-- ╭─────────────────────────────╮
-- │ Rule                        │
-- │                             │
-- │ Taken from SQLite's         │
-- │ Code Of Ethics              │
-- ╰─────────────────────────────╯
-- First of all, love the Lord God with your whole heart, your whole soul, and your whole strength.
-- Then, love your neighbor as yourself.
-- Do not murder.
-- Do not commit adultery.
-- Do not steal.
-- Do not covet.
-- Do not bear false witness.
-- Honor all people.
-- Do not do to another what you would not have done to yourself.
-- Deny oneself in order to follow Christ.
-- Chastise the body.
-- Do not become attached to pleasures.
-- Love fasting.
-- Relieve the poor.
-- Clothe the naked.
-- Visit the sick.
-- Bury the dead.
-- Be a help in times of trouble.
-- Console the sorrowing.
-- Be a stranger to the world's ways.
-- Prefer nothing more than the love of Christ.
-- Do not give way to anger.
-- Do not nurse a grudge.
-- Do not entertain deceit in your heart.
-- Do not give a false peace.
-- Do not forsake charity.
-- Do not swear, for fear of perjuring yourself.
-- Utter only truth from heart and mouth.
-- Do not return evil for evil.
-- Do no wrong to anyone, and bear patiently wrongs done to yourself.
-- Love your enemies.
-- Do not curse those who curse you, but rather bless them.
-- Bear persecution for justice's sake.
-- Be not proud.
-- Be not addicted to wine.
-- Be not a great eater.
-- Be not drowsy.
-- Be not lazy.
-- Be not a grumbler.
-- Be not a detractor.
-- Put your hope in God.
-- Attribute to God, and not to self, whatever good you see in yourself.
-- Recognize always that evil is your own doing, and to impute it to yourself.
-- Fear the Day of Judgment.
-- Be in dread of hell.
-- Desire eternal life with all the passion of the spirit.
-- Keep death daily before your eyes.
-- Keep constant guard over the actions of your life.
-- Know for certain that God sees you everywhere.
-- When wrongful thoughts come into your heart, dash them against Christ immediately.
-- Disclose wrongful thoughts to your spiritual mentor.
-- Guard your tongue against evil and depraved speech.
-- Do not love much talking.
-- Speak no useless words or words that move to laughter.
-- Do not love much or boisterous laughter.
-- Listen willingly to holy reading.
-- Devote yourself frequently to prayer.
-- Daily in your prayers, with tears and sighs, confess your past sins to God, and amend them for the future.
-- Fulfill not the desires of the flesh; hate your own will.
-- Obey in all things the commands of those whom God has placed in authority over you even though they (which God forbid) should act otherwise, mindful of the Lord's precept, "Do what they say, but not what they do."
-- Do not wish to be called holy before one is holy; but first to be holy, that you may be truly so called.
-- Fulfill God's commandments daily in your deeds.
-- Love chastity.
-- Hate no one.
-- Be not jealous, nor harbor envy.
-- Do not love quarreling.
-- Shun arrogance.
-- Respect your seniors.
-- Love your juniors.
-- Pray for your enemies in the love of Christ.
-- Make peace with your adversary before the sun sets.
-- Never despair of God's mercy.
