-- treesitter.lua --

local treesitter = require("nvim-treesitter.configs")

treesitter.setup{
    ensure_installed = { "bash", "c", "dockerfile", "html", "java", "json", "lua", "make", "python", "typescript", "vim" },
    sync_install = false,
    ignore_install = { "javascript" },
    highlight = {
        enable = true
    },
}
