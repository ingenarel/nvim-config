-- TODO: make all colors different as much as i can, and make sure that i have all types of color highlight groups

-- nvim {{{
vim.api.nvim_set_hl(0, "Normal", {fg="#FF1163", bg="#110015", blend=0})
vim.api.nvim_set_hl(0, "Visual", {reverse=true, blend=0})

vim.api.nvim_set_hl(0, "SignColumn", {fg="#00FFC8", blend=0})
vim.api.nvim_set_hl(0, "ColorColumn", {bg="#26002F", blend=0})

vim.api.nvim_set_hl(0, "WinSeparator", {fg="#00FFFF", bg="#230021", blend=0})

vim.api.nvim_set_hl(0, "IncSearch", {bg="#D4FF00", fg="#000000", blend=0, underdashed=true})
vim.api.nvim_set_hl(0, "Search", {bg="#D4FF00", fg="#000000", blend=0, underdashed=true})
vim.api.nvim_set_hl(0, "CurSearch", {bg="#ffffff", fg="#000000", blend=0, underdashed=true})
vim.api.nvim_set_hl(0, "Substitute", {bg="#D4FF00", fg="#000000", blend=0, underdouble=true})

vim.api.nvim_set_hl(0, "Comment", {fg="#627B7F", italic=true, blend=0})
vim.api.nvim_set_hl(0, "Todo", {fg="#68F0FF", bg="#372963", italic=true, blend=0})

vim.api.nvim_set_hl(0, "MatchParen", {fg="#FF0000", bg="#00ff00", blend=0})
vim.api.nvim_set_hl(0, "NonText", {fg="#365C93", blend=0})
vim.api.nvim_set_hl(0, "WildMenu", {fg="#00FFC8", bold=true, blend=0})
vim.api.nvim_set_hl(0, "Title", {fg="#C592FF", blend=0})
vim.api.nvim_set_hl(0, "String", {fg="#00C3FF", blend=0})
vim.api.nvim_set_hl(0, "Number", {fg="#fffc58", blend=0})
vim.api.nvim_set_hl(0, "Float", {fg="#fffc00", blend=0})
vim.api.nvim_set_hl(0, "Boolean", {fg="#FFFC87", blend=0})
vim.api.nvim_set_hl(0, "Character", {fg="#6EFF5B", blend=0})
vim.api.nvim_set_hl(0, "Label", {fg="#76C1FF", blend=0})
vim.api.nvim_set_hl(0, "Exception", {fg="#ff0000", blend=0})
vim.api.nvim_set_hl(0, "Operator", {fg="#75FFEE", blend=0})
vim.api.nvim_set_hl(0, "Keyword", {fg="#76C1FF", blend=0})
vim.api.nvim_set_hl(0, "StorageClass", {fg="#d57bff", blend=0})
vim.api.nvim_set_hl(0, "Statement", {fg="#39CBE1", blend=0})
vim.api.nvim_set_hl(0, "Conditional", {fg="#00FF50", blend=0})
vim.api.nvim_set_hl(0, "Repeat", {fg="#6372FF", blend=0})
vim.api.nvim_set_hl(0, "Function", {fg="#d57bff", blend=0})
vim.api.nvim_set_hl(0, "Identifier", {fg="#FFB5F6", blend=0, italic=true})
vim.api.nvim_set_hl(0, "PreProc", {fg="#00FF9C", blend=0})
vim.api.nvim_set_hl(0, "Type", {fg="#00FF9C", blend=0})
vim.api.nvim_set_hl(0, "Structure", {fg="#00FF9C", blend=0})
vim.api.nvim_set_hl(0, "Typedef", {fg="#00FF9C", blend=0})
vim.api.nvim_set_hl(0, "Error", {fg="#ff3270", undercurl=true, blend=0})
vim.api.nvim_set_hl(0, "WarningMsg", {fg="#009550", blend=0})
vim.api.nvim_set_hl(0, "Special", {fg="#00FF9C", italic=true, blend=0})
vim.api.nvim_set_hl(0, "Tag", {fg="#00FF9C", undercurl=true, blend=0})
vim.api.nvim_set_hl(0, "Pmenu", {bg="#140007", blend=30})
vim.api.nvim_set_hl(0, "PmenuSel", {bg="#A556FF", fg="#000000", blend=0})
vim.api.nvim_set_hl(0, "PmenuSbar", {bg="#FF0054", blend=0})
vim.api.nvim_set_hl(0, "PmenuThumb", {bg="#d57bff", blend=0})
vim.api.nvim_set_hl(0, "StatusLine", {fg="#ff0055", bg="#1d000a", bold=true, blend=0})
vim.api.nvim_set_hl(0, "StatusLineNC", {fg="#ff0055", bg="#000000", blend=0})
vim.api.nvim_set_hl(0, "TabLine", {fg="#FF4081", blend=0})
vim.api.nvim_set_hl(0, "TabLineSel", {fg="#FF4081", bold=true, blend=0})
vim.api.nvim_set_hl(0, "Folded", {fg="#00FFA1", italic=true, blend=0})
vim.api.nvim_set_hl(0, "FoldColumn", {fg="#00FFC8", blend=0})
vim.api.nvim_set_hl(0, "CursorLine", {bg="#272727", blend=0})
vim.api.nvim_set_hl(0, "CursorColumn", {bg="#585858", blend=0})
vim.api.nvim_set_hl(0, "CursorLineNr", {bg="#272727", blend=0})
vim.api.nvim_set_hl(0, "LineNr", {fg="#FF1163", blend=0})
-- nvim }}}

-- dashboard {{{
vim.api.nvim_set_hl(0, "DashboardIcon", {fg="#ffffff", blend=0})
vim.api.nvim_set_hl(0, "DashboardDesc", {fg="#00FF21", blend=0})
vim.api.nvim_set_hl(0, "DashboardKey", {fg="#F900FF", bg="#110015", blend=0})
-- dashboard }}}

--gitsigns {{{
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00FF00", blend=0})
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#FFFF00", blend=0})
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#FF004E", blend=0})
--gitsigns }}}

-- floaterm {{{
vim.api.nvim_set_hl(0, "Floaterm", {blend=0})
vim.api.nvim_set_hl(0, "FloatermBorder", {blend=0})
-- floaterm }}}

-- this theme is actually a custom+improved version of https://github.com/thedenisnikulin/vim-cyberpunk
