-- filetree.lua --

-- "nvim-tree.lua" setup
require("nvim-tree").setup{
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = false,
    ignore_ft_on_setup  = {},
    auto_close          = false,
    open_on_tab         = false,
    view = {
        width = 45,
        side  = "right"
    }
}
vim.cmd[[hi NvimTreeNormal guibg=#141414]]

-- "nvim-tree.lua" mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-e>",     ":NvimTreeToggle<CR>",  opts)
map("n", "<Leader>r", ":NvimTreeRefresh<CR>", opts)
