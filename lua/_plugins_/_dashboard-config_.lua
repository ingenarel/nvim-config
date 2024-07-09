require("dashboard").setup(
    {
        theme = 'hyper',
        config = {
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
        preview = {
            command = "lolcat",
            file_path = "~/.config/nvim/lua/_plugins_/karambit-lighter.txt",
            file_height = 19,
            file_width = 59,
        }
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
