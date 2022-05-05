-- nvim-tree.lua --

require("nvim-tree").setup{
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = false,
    ignore_ft_on_setup  = {},
    -- auto_close          = false,
    open_on_tab         = false,
    view = {
        width = 45,
        side  = "right"
    }
}

-- disable status line within filetree buffer
-- vim.cmd[[
-- function! DisableST()
--     return " * FileTree * "
-- endfunction
-- au BufEnter NvimTree setlocal statusline=%!DisableST()
-- ]]
