local options = {
  syntax = "on",
  mouse = "a",
  encoding = "utf8",
  ffs = { "unix", "dos", "mac" },
  clipboard = "unnamedplus",
  hidden = true,
  number = true,
  relativenumber = true,
  backspace = "2",
  tabstop = 4,
  softtabstop = 4,
  shiftwidth = 4,
  expandtab = true,
  scrolloff = 10,
  incsearch = true,
  hlsearch = true,
  splitright = true,
  splitbelow = true,
  ruler = true,
  wildmenu = true,
  completeopt = { "menuone", "noselect" },
  signcolumn = "yes",
  viminfo = "",
  showtabline = 2,
  cursorline = true,
  laststatus = 3,
  --showmode = false,
  swapfile = false,
  errorbells = false ,
  termguicolors = true
}
vim.cmd[[
set fillchars+=vert:▎
set fillchars+=eob:\ 

autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType terraform setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType lua setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2
]]

for k, v in pairs(options) do
  vim.opt[k] = v
end
