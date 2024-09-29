require("colorizer").setup{
    DEFAULT_OPTIONS = {
        RGB      = true;
        RRGGBB   = true;
        names    = true;
        RRGGBBAA = true;
        rgb_fn   = true;
        hsl_fn   = true;
        css      = true;
        css_fn   = true;
    },
    "*"
}
local picker = require('color-picker')
local actions = require('color-picker.actions')

picker.setup({
    defaults = {
        -- jump length
        jump_v = -1, -- -1 = sqrt(height)
        jump_h = -1, -- -1 = sqrt(width * 2)

        -- char used to indicate current hue
        hue_char = '|',

        -- hue step per rotation (in degrees)
        hue_step = 1,

        -- format used when inserting a new color
        format = 'hex',

        -- palette mappings
        mappings = {
            -- disable a mapping
            -- ['k'] = nil,

            -- move one cell
            ['k'] = actions.move_up,
            ['j'] = actions.move_down,
            ['h'] = actions.move_left,
            ['l'] = actions.move_right,

            -- move many cells
            ['K'] = actions.jump_up,
            ['J'] = actions.jump_down,
            ['H'] = actions.jump_left,
            ['L'] = actions.jump_right,

            -- rotate hue
            ['<C-h>'] = actions.hue_left,
            ['<C-l>'] = actions.hue_right,

            -- select the color under the cursor
            ['<CR>'] = actions.select,

            -- close the palette
            ['q'] = actions.close,
        },
    }
})
