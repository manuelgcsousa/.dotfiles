-- treesitter.lua --

local treesitter = require("nvim-treesitter.configs")

treesitter.setup{
    ensure_installed = "maintained",
    sync_install = false,
    ignore_install = { "javascript" },
    highlight = {
        enable = true,
        --disable = { "c", "rust" },
    },
}
