local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ","

-- defaults
map("n", "<Leader>w", ":w<CR><Space><Left>", opts)              -- quick save
map("n", "<Leader>Q", ":bdelete!<CR>",       opts)              -- force buffer quit
map("n", "<Leader>c", ":noh<CR>",            opts)              -- clear search highlight
map("v", "<C-c>",     "\"+yi",               { silent = true }) -- Ctrl-c
map("i", "<C-v>",     "<ESC>\"+pa",          { silent = true }) -- Ctrl-v
map("v", "<",         "<gv",                 { silent = true }) -- shift left 
map("v", ">",         ">gv",                 { silent = true }) -- shift right

-- barbar
map("n", "<S-Tab>",           ":BufferPrevious<CR>",     opts)
map("n", "<Tab>",             ":BufferNext<CR>",         opts)
map("n", "<Leader>q",         ":BufferClose<CR>",        opts)
map("n", "<Leader>1",         ":BufferGoto 1<CR>",       opts)
map("n", "<Leader>2",         ":BufferGoto 2<CR>",       opts)
map("n", "<Leader>3",         ":BufferGoto 3<CR>",       opts)
map("n", "<Leader>4",         ":BufferGoto 4<CR>",       opts)
map("n", "<Leader>5",         ":BufferGoto 5<CR>",       opts)
map("n", "<Leader>6",         ":BufferGoto 6<CR>",       opts)
map("n", "<Leader>7",         ":BufferGoto 7<CR>",       opts)
map("n", "<Leader>7",         ":BufferGoto 8<CR>",       opts)
map("n", "<Leader>9",         ":BufferGoto 9<CR>",       opts)
map("n", "<Leader><S-Left>",  ":BufferMovePrevious<CR>", opts)
map("n", "<Leader><S-Right>", ":BufferMoveNext<CR>",     opts)

-- nvim-tree
map("n", "<C-e>",     ":NvimTreeToggle<CR>",  opts)

-- telescope
map("n", "<C-f>", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
map("n", "<C-g>", "<cmd>lua require('telescope.builtin').live_grep()<CR>",  opts)

-- neovim lsp
function load_lsp_mappings()
    map("n", "<Leader>d",  "<cmd>lua vim.lsp.buf.declaration()<CR>",   opts)
    map("n", "<Leader>r",  ":Telescope lsp_references<CR>",            opts)
    map("n", "<Leader>h",  "<cmd>lua vim.lsp.buf.hover()<CR>",         opts)
    map("n", "<Leader>sd", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
end

-- gitsigns
function load_gitsigns_mappings()
  map("n", "<leader>lb", ":Gitsigns toggle_current_line_blame<CR>", opts)
end
