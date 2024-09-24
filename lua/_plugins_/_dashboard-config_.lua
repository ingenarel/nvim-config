require("dashboard").setup{
    theme = 'hyper',
    config = {
        header ={},
        footer = {},
        mru = {limit=25},
        packages = { enable = false},
        project = { enable = true, limit = 10},
        shortcut = {
            {
                desc = "Find",
                action = "Telescope find_files",
                key = "f"
            },
            {
                desc = "Grep",
                action = "Telescope live_grep",
                key = "g"
            },
            {
                desc = "Old Files",
                action = "Telescope oldfiles",
                key = "o"
            },
            {
                desc = "Telescope",
                action = "Telescope",
                key = "t"
            },
            {
                desc = "Update",
                action = "<F5>",
                key = "u"
            },
        }
    },
}
