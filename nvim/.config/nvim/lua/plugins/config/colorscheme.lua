--vim.cmd[[
--set t_Co=256
--set t_ut=
--colorscheme codedark
--
--" change codedark default local settings:
--" let s:cdBack = {'gui': '#1C1C1C', 'cterm': s:cterm00, 'cterm256': '234'}
--" let s:cdTabCurrent = {'gui': '#1C1C1C', 'cterm': s:cterm00, 'cterm256': '234'}
--" call <sid>hi('ModeMsg', s:cdFront, s:cdBack, 'none', {})
--]]

vim.o.background = "dark"

local c = require("vscode.colors")
require("vscode").setup({
  italic_comments = true,

  color_overrides = {
    vscBack = "#1C1C1C"
  },

  group_overrides = {
    ModeMsg = { fg = c.vscFront, bg = "#1C1C1C" },
    TelescopePromptBorder = { fg = "#DDDDDD", bg = "NONE" },
    TelescopeResultsBorder = { fg = "#DDDDDD", bg = "NONE" },
    TelescopePreviewBorder = { fg = "#DDDDDD", bg = "NONE" }
  }
})
