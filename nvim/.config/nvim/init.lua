-- init.lua --
vim.g.mapleader = ","


-- defaults
local set = vim.opt
set.syntax = "on" 
set.mouse = "a"
set.encoding = "utf8"
set.ffs = { "unix", "dos", "mac" }
set.hidden = true
set.number = true
set.relativenumber = true
set.backspace = "2"
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.scrolloff = 10
set.incsearch = true
set.hlsearch = true
set.splitright = true
set.splitbelow = true
set.ruler = true
set.wildmenu = true
set.completeopt = { "menuone", "noselect" }
set.signcolumn = "no"
set.viminfo = ""
set.showtabline = 2
set.cursorline = true
set.laststatus = 2
vim.cmd[[set fillchars+=vert:\ ]]
vim.cmd[[set fillchars=eob:\ ]]
set.showmode = false
set.swapfile = false
set.errorbells = false 
set.termguicolors = true


-- mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<Leader>w", ":w<CR><Space><Left>", opts) -- quick save
map("n", "<Leader>c", ":noh<CR>",            opts) -- clean search highlight

map("v", "<C-c>", "\"+yi",      { silent = true }) -- Ctrl-c
map("i", "<C-v>", "<ESC>\"+pa", { silent = true }) -- Ctrl-v

map("v", "<", "<gv", { silent = true })
map("v", ">", ">gv", { silent = true })


-- plugins & configs
require("plugins")
require("colorscheme")
require("filetree")
require("lsp")
require("status")
