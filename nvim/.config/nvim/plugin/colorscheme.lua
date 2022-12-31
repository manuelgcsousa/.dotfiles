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
