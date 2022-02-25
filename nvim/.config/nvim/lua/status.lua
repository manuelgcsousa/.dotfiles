-- status.lua --

-- "barbar.nvim" configs
vim.g.bufferline = {
    animation = false,
    auto_hide = false,
    tabpages = true,
    closable = true,
    clickable = true
}


-- "lualine.nvim" setup
require("lualine").setup{
    options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = "",
        section_separators = "",
        disabled_filetypes = {},
        always_divide_middle = true,
    },
}
