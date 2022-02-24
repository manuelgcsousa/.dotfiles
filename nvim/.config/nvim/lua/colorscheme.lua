-- colorscheme.lua --

vim.cmd[[
" theme and defaults
colorscheme onedark
set background=dark
hi Normal ctermbg=234 guibg=#1c1c1c
hi Cursor gui=NONE guifg=bg guibg=fg
hi VertSplit guibg=#1c1c1c

" vscode-like colors
hi! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
hi! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
hi! CmpItemKindFunction guibg=NONE guifg=#C586C0
hi! CmpItemKindMethod guibg=NONE guifg=#C586C0
hi! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
hi! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
]]
