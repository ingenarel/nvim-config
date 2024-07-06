require("nvim-autopairs").setup(
	{
        disable_in_visualblock = true
    }
)
local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')
npairs.add_rule(
    Rule("<", ">")
)
 
