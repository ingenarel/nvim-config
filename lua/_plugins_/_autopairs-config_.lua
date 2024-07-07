require("nvim-autopairs").setup(
	{
        disable_in_visualblock = true,
        ignored_next_char = nil
    }
) 

local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')
npairs.add_rule(
    Rule("<", ">")
)
 
