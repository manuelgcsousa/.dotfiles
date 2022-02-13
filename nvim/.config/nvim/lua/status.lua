-- status.lua --

-- "barbar.nvim" configs
vim.g.bufferline = {
    animation = false,
    auto_hide = false,
    tabpages = true,
    closable = false,
    clickable = true
}

-- "barbar.nvim" mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<S-Tab>",   ":BufferPrevious<CR>", opts)
map("n", "<Tab>",     ":BufferNext<CR>",     opts)
map("n", "<Leader>q", ":BufferClose<CR>",    opts)

map("n", "<Leader>1", ":BufferGoto 1<CR>", opts)
map("n", "<Leader>2", ":BufferGoto 2<CR>", opts)
map("n", "<Leader>3", ":BufferGoto 3<CR>", opts)
map("n", "<Leader>4", ":BufferGoto 4<CR>", opts)
map("n", "<Leader>5", ":BufferGoto 5<CR>", opts)
map("n", "<Leader>6", ":BufferGoto 6<CR>", opts)
map("n", "<Leader>7", ":BufferGoto 7<CR>", opts)
map("n", "<Leader>8", ":BufferGoto 8<CR>", opts)
map("n", "<Leader>9", ":BufferGoto 9<CR>", opts)

map("n", "<Leader><S-Left>",  ":BufferMovePrevious<CR>", opts)
map("n", "<Leader><S-Right>", ":BufferMoveNext<CR>",     opts)


-- "lualine.nvim" setup
require("lualine").setup{
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = "",
        section_separators = "",
        disabled_filetypes = {},
        always_divide_middle = true,
    },
}
