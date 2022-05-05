-- init.lua --
vim.g.mapleader = ","

-- defaults
local set = vim.opt
set.syntax = "on" 
set.mouse = "a"
set.encoding = "utf8"
set.ffs = { "unix", "dos", "mac" }
set.clipboard = "unnamedplus"
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
set.signcolumn = "auto"
set.viminfo = ""
set.showtabline = 2
set.cursorline = true
set.laststatus = 3
vim.cmd[[set fillchars+=vert:\┃]]
vim.cmd[[set fillchars+=eob:\ ]]
set.showmode = false
set.swapfile = false
set.errorbells = false 
set.termguicolors = true

-- plugins & configs
require("plugins")
require("mappings")
require("colorscheme")
require("config.treesitter")
require("config.barbar")
require("config.lualine")
require("config.nvim-tree")
require("config.telescope")
require("config.toggleterm")
require("config.LSP")
