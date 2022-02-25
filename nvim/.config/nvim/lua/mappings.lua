-- mappings.lua --

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- defaults
map("n", "<Leader>w",  ":w<CR><Space><Left>", opts)              -- quick save
map("n", "<Leader>fq", ":bdelete!<CR>",       opts)              -- force buffer quit
map("n", "<Leader>c",  ":noh<CR>",            opts)              -- clean search highlight
map("v", "<C-c>",      "\"+yi",               { silent = true }) -- Ctrl-c
map("i", "<C-v>",      "<ESC>\"+pa",          { silent = true }) -- Ctrl-v
map("v", "<",          "<gv",                 { silent = true }) -- shift left 
map("v", ">",          ">gv",                 { silent = true }) -- shift right

-- "barbar.nvim" mappings
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
map("n", "<Leader>8",         ":BufferGoto 8<CR>",       opts)
map("n", "<Leader>9",         ":BufferGoto 9<CR>",       opts)
map("n", "<Leader><S-Left>",  ":BufferMovePrevious<CR>", opts)
map("n", "<Leader><S-Right>", ":BufferMoveNext<CR>",     opts)

-- "nvim-tree.lua" mappings
map("n", "<Leader>e",  ":NvimTreeToggle<CR>",  opts)
map("n", "<Leader>fe", ":NvimTreeFocus<CR>",   opts)
map("n", "<Leader>r",  ":NvimTreeRefresh<CR>", opts)

-- "lsp" mappings
function load_lsp_mappings()
    map("n", "<Leader>d",  "<cmd>lua vim.lsp.buf.declaration()<CR>",   opts)
  --map("n", "<Leader>g",  "<cmd>lua vim.lsp.buf.definition()<CR>",    opts)
    map("n", "<Leader>h",  "<cmd>lua vim.lsp.buf.hover()<CR>",         opts)
    map("n", "<Leader>sd", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
end
