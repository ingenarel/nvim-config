require("dashboard").setup(
    {
        theme = 'hyper',
        config = {
            header = {
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣿⣯⣭⣭⠭⠭⠭⠭⢍⣙⣛⠒⠢⠤⢄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⢀⣤⡶⠿⠛⠛⠋⠉⠉⠉⠉⠉⠉⠑⠒⠢⢤⣀⡉⠉⠁⠒⠂⠉⠉⠓⣦⢴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⣠⠞⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠒⢦⣀⠀⣿⠉⠉⠉⢸⣇⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⢀⡴⠋⣁⣠⠤⠶⠒⠚⠉⠉⠉⠉⠉⠉⠒⠶⠤⣀⣀⠀⠀⠀⠀⠀⠀⠈⠹⣿⡆⠀⢀⡞⠈⢷⡈⠳⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠠⣿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⣄⡀⠀⠀⠀⡏⢹⠀⡸⠁⠀⠀⠉⠳⢦⣈⠻⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⡀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢤⣸⠁⡜⢠⠇⠀⣀⣠⣤⣤⣒⣺⣷⡒⠓⢿⡦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⣠⣴⣾⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣧⡀⠻⣴⠃⠈⣷⣿⣿⣯⣍⣁⠀⠀⠉⠙⢷⡆⠙⢯⡲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⣴⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⣿⣧⠀⠻⣦⠖⠋⠉⠀⠀⠀⠉⢳⡀⠀⠀⡼⣷⡀⠀⠙⢮⡳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⣿⡯⠙⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⣤⠿⠷⠟⠻⠿⣶⣤⡙⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⣈⡉⠋⠉⠀⣴⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠳⣤⠀⠀⠀⠘⢿⢇⠀⠳⣟⢆⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣆⠀⢤⢶⣤⠀⣠⣨⣿⣷⣶⣤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⡀⠀⣠⡞⣿⣤⢤⣈⣿⣧⡄⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⠿⠋⠁⠠⢤⣄⣀⠙⠛⠿⢿⣇⡉⢀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣧⡾⠛⠋⠉⠉⠙⣮⠉⠀⢷⡆⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣶⣦⣤⣈⡉⠛⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠳⣄⠀⠀⢀⡼⠀⠀⠀⢹⣷⡀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣆⣴⡿⢷⣶⣲⡦⣄⡹⣷⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡋⣹⠟⠉⠀⠀⠉⠳⡝⠻⣧",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡟⢰⠏⠀⠀⠀⠀⠀⠀⢹⡀⡟",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡘⣇⠀⠀⠀⠀⠀⠀⣸⢰⠃",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠻⠿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣌⠷⣄⣀⣀⣠⠶⠁⠸⡄",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⠤⠤⠤⠶⠦⢄⡧",
            },
            packages = {enabled=false},
            project = {enable=false},
            mru = {limit=20},
            footer = {
                "",
                "Live",
                "Not for yourself",
                "But for her."
            },
        },
        -- preview = {
        --     command = "python",
        --     file_path = "~/.config/nvim/lua/_plugins_/test.py",
        --     file_height = 19,
        --     file_width = 59,
        -- }
    }
)

-- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣿⣯⣭⣭⠭⠭⠭⠭⢍⣙⣛⠒⠢⠤⢄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
-- "⠀⠀⠀⠀⠀⠀⢀⣤⡶⠿⠛⠛⠋⠉⠉⠉⠉⠉⠉⠑⠒⠢⢤⣀⡉⠉⠁⠒⠂⠉⠉⠓⣦⢴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
-- "⠀⠀⠀⠀⣠⠞⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠒⢦⣀⠀⣿⠉⠉⠉⢸⣇⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
-- "⠀⢀⡴⠋⣁⣠⠤⠶⠒⠚⠉⠉⠉⠉⠉⠉⠒⠶⠤⣀⣀⠀⠀⠀⠀⠀⠀⠈⠹⣿⡆⠀⢀⡞⠈⢷⡈⠳⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
-- "⠠⣿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⣄⡀⠀⠀⠀⡏⢹⠀⡸⠁⠀⠀⠉⠳⢦⣈⠻⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
-- "⠀⠀⠀⠀⠀⠀⠀⡀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢤⣸⠁⡜⢠⠇⠀⣀⣠⣤⣤⣒⣺⣷⡒⠓⢿⡦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
-- "⠀⠀⠀⠀⣠⣴⣾⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣧⡀⠻⣴⠃⠈⣷⣿⣿⣯⣍⣁⠀⠀⠉⠙⢷⡆⠙⢯⡲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
-- "⠀⠀⣴⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⣿⣧⠀⠻⣦⠖⠋⠉⠀⠀⠀⠉⢳⡀⠀⠀⡼⣷⡀⠀⠙⢮⡳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
-- "⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⣿⡯⠙⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⣤⠿⠷⠟⠻⠿⣶⣤⡙⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀",
-- "⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⣈⡉⠋⠉⠀⣴⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠳⣤⠀⠀⠀⠘⢿⢇⠀⠳⣟⢆⠀⠀⠀⠀⠀⠀",
-- "⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣆⠀⢤⢶⣤⠀⣠⣨⣿⣷⣶⣤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⡀⠀⣠⡞⣿⣤⢤⣈⣿⣧⡄⠀⠀⠀⠀",
-- "⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⠿⠋⠁⠠⢤⣄⣀⠙⠛⠿⢿⣇⡉⢀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣧⡾⠛⠋⠉⠉⠙⣮⠉⠀⢷⡆⠀⠀⠀",
-- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣶⣦⣤⣈⡉⠛⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠳⣄⠀⠀⢀⡼⠀⠀⠀⢹⣷⡀⠀",
-- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣆⣴⡿⢷⣶⣲⡦⣄⡹⣷⠀",
-- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡋⣹⠟⠉⠀⠀⠉⠳⡝⠻⣧",
-- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡟⢰⠏⠀⠀⠀⠀⠀⠀⢹⡀⡟",
-- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡘⣇⠀⠀⠀⠀⠀⠀⣸⢰⠃",
-- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠻⠿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣌⠷⣄⣀⣀⣠⠶⠁⠸⡄",
-- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⠤⠤⠤⠶⠦⢄⡧",


-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣿⣯⣭⣭⠭⠭⠭⠭⢍⣙⣛⠒⠢⠤⢄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⢀⣤⡶⠿⠛⠛⠋⠉⠉⠉⠉⠉⠉⠑⠒⠢⢤⣀⡉⠉⠁⠒⠂⠉⠉⠓⣦⢴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⣠⠞⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠒⢦⣀⠀⣿⠉⠉⠉⢸⣇⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⢀⡴⠋⣁⣠⠤⠶⠒⠚⠉⠉⠉⠉⠉⠉⠒⠶⠤⣀⣀⠀⠀⠀⠀⠀⠀⠈⠹⣿⡆⠀⢀⡞⠈⢷⡈⠳⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠠⣿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⣄⡀⠀⠀⠀⡏⢹⠀⡸⠁⠀⠀⠉⠳⢦⣈⠻⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⡀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢤⣸⠁⡜⢠⠇⠀⣀⣠⣤⣤⣒⣺⣷⡒⠓⢿⡦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⣠⣴⣾⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣧⡀⠻⣴⠃⠈⣷⣿⣿⣯⣍⣁⠀⠀⠉⠙⢷⡆⠙⢯⡲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⣴⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⣿⣧⠀⠻⣦⠖⠋⠉⠀⠀⠀⠉⢳⡀⠀⠀⡼⣷⡀⠀⠙⢮⡳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⣿⡯⠙⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⣤⠿⠷⠟⠻⠿⣶⣤⡙⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⣈⡉⠋⠉⠀⣴⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠳⣤⠀⠀⠀⠘⢿⢇⠀⠳⣟⢆⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣆⠀⢤⢶⣤⠀⣠⣨⣿⣷⣶⣤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⡀⠀⣠⡞⣿⣤⢤⣈⣿⣧⡄⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⠿⠋⠁⠠⢤⣄⣀⠙⠛⠿⢿⣇⡉⢀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣧⡾⠛⠋⠉⠉⠙⣮⠉⠀⢷⡆⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣶⣦⣤⣈⡉⠛⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠳⣄⠀⠀⢀⡼⠀⠀⠀⢹⣷⡀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣆⣴⡿⢷⣶⣲⡦⣄⡹⣷⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡋⣹⠟⠉⠀⠀⠉⠳⡝⠻⣧
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡟⢰⠏⠀⠀⠀⠀⠀⠀⢹⡀⡟
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡘⣇⠀⠀⠀⠀⠀⠀⣸⢰⠃
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠻⠿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣌⠷⣄⣀⣀⣠⠶⠁⠸⡄
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⠤⠤⠤⠶⠦⢄⡧



-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣿⣯⣭⣭⠭⠭⠭⠭⢍⣙⣛⠒⠢⠤⢄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⢀⣤⡶⠿⠛⠛⠋⠉⠉⠉⠉⠉⠉⠑⠒⠢⢤⣀⡉⠉⠁⠒⠂⠉⠉⠓⣦⢴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⣠⠞⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠒⢦⣀⠀⣿⠉⠉⠉⢸⣇⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⢀⡴⠋⣁⣠⠤⠶⠒⠚⠉⠉⠉⠉⠉⠉⠒⠶⠤⣀⣀⠀⠀⠀⠀⠀⠀⠈⠹⣿⡆⠀⢀⡞⠈⢷⡈⠳⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠠⣿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⣄⡀⠀⠀⠀⡏⢹⠀⡸⠁⠀⠀⠉⠳⢦⣈⠻⠦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢤⣸⠁⡜⢠⠇⠀⣀⣠⣤⣤⣒⣺⣷⡒⠓⢿⡦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣴⠃⠈⣷⣿⣿⣯⣍⣁⠀⠀⠉⠙⢷⡆⠙⢯⡲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣦⠖⠋⠉⠀⠀⠀⠉⢳⡀⠀⠀⡼⣷⡀⠀⠙⢮⡳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⣤⠿⠷⠟⠻⠿⣶⣤⡙⢿⣦⡀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠳⣤⠀⠀⠀⠘⢿⢇⠀⠳⣟⢆⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⡀⠀⣠⡞⣿⣤⢤⣈⣿⣧⡄⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣧⡾⠛⠋⠉⠉⠙⣮⠉⠀⢷⡆⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠳⣄⠀⠀⢀⡼⠀⠀⠀⢹⣷⡀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣆⣴⡿⢷⣶⣲⡦⣄⡹⣷⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡋⣹⠟⠉⠀⠀⠉⠳⡝⠻⣧
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⡟⢰⠏⠀⠀⠀⠀⠀⠀⢹⡀⡟
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡘⣇⠀⠀⠀⠀⠀⠀⣸⢰⠃
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣌⠷⣄⣀⣀⣠⠶⠁⠸⡄
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⠦⠤⠤⠤⠶⠦⢄⡧

-- ⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⣠⣴⣾⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣧⡀⠀⠀
-- ⠀⠀⣴⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣾⣿⣧⠀⠀
-- ⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣿⣿⡯⠙⣿⣿⠀⠀
-- ⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⣈⡉⠋⠉⠀⣴⡿⠋⠀⠀
-- ⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣆⠀⢤⢶⣤⠀⣠⣨⣿⣷⣶⣤⠄⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⠿⠋⠁⠠⢤⣄⣀⠙⠛⠿⢿⣇⡉⢀⣷⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠻⣿⡿⠛⠁⠀⠀⣶⣶⣤⣄⣉⠛⠳⠶⣤⣀⡁⠘⠋⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣶⣦⣤⣈⡉⠛⠂⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠆⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠻⠿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀
