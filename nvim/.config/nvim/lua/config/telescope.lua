-- telescope.lua --

local telescope = require("telescope")

telescope.setup{
    defaults = {
        selection_caret = "  ",
        path_display = { "smart" },
    },
    pickers = {
        find_files = {
            hidden = true
        }
    }
}
